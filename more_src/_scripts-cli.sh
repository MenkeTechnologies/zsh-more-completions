# Source: https://github.com/datastaxdevs/terraform-nvidia-runai-stack/blob/69c1d69bf7f46f6c683d47bbd1aecb3ed1ad7f32/scripts/cli.sh
# Repository: datastaxdevs/terraform-nvidia-runai-stack (scripts/cli.sh)
#!/bin/bash
#
# Copyright (c) 2025, DataStax, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Use strict mode but handle errors gracefully to prevent terminal closure
set -uo pipefail
# Note: Removed -e flag to prevent automatic script termination
# Individual commands that should fail-fast can use explicit error checking
[[ "${DEBUG:-false}" == "true" ]] && set -x

# Function for controlled script exit (doesn't close terminal)
safe_exit() {
    local exit_code=${1:-1}
    local message=${2:-"Script exiting"}
    echo "$message" >&2
    return $exit_code
}
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Preserve the CLI root directory to avoid being clobbered by sourced scripts redefining SCRIPT_DIR
CLI_DIR="$SCRIPT_DIR"

# Source logger if available
if [ -f "$SCRIPT_DIR/platform/common/logging.sh" ]; then
	# shellcheck source=/dev/null
	source "$SCRIPT_DIR/platform/common/logging.sh"
fi

# Load project environment early (can be overridden by --env-file and CLI flags)
if type load_env_if_present >/dev/null 2>&1; then
	load_env_if_present "$SCRIPT_DIR/../.env"
fi

# Global flags parsing for all subcommands (non-breaking defaults)
parse_global_flags() {
	GLOBAL_ARGS=()
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--debug | --verbose)
			export DEBUG=true
			shift
			;;
		--dry-run)
			export DRY_RUN=true
			shift
			;;
		--yes | --non-interactive)
			export YES=true CI=true
			shift
			;;
		--env-file)
			if type load_env_if_present >/dev/null 2>&1; then
				load_env_if_present "$2"
			fi
			shift 2
			;;
		--via-bastion)
			export VIA_BASTION="$2"
			shift 2
			;;
		--namespace)
			export NAMESPACE="$2"
			shift 2
			;;
		--kubeconfig)
			export KUBECONFIG="$2"
			shift 2
			;;
		--context)
			export KUBECTL_CONTEXT="$2"
			shift 2
			;;
		--log-level)
			export LOG_LEVEL="$2"
			shift 2
			;;
		--)
			shift
			while [[ $# -gt 0 ]]; do
				GLOBAL_ARGS+=("$1")
				shift
			done
			break
			;;
		*)
			GLOBAL_ARGS+=("$1")
			shift
			;;
		esac
	done
	# shellcheck disable=SC2034
	PARSED_ARGS=("${GLOBAL_ARGS[@]}")
}

# Parse globals first to honor CLI-over-env precedence
parse_global_flags "$@"
set -- "${PARSED_ARGS[@]}"

usage() {
	cat <<'EOF'
Usage: scripts/cli.sh <command> [args]

Commands:
  nginx controller [--yes] [--dry-run]
  nginx ingress [--target all|nv-ingest|embedder|reranker|ns/name] [--profile large_upload|high_throughput] [--whitelist CIDRS] [--yes] [--dry-run]
  ingress allowlist|whitelist --allowed-ips CSV [--yes] [--dry-run]
  ingress status
  ingress reranker --dev | --domain DOMAIN [--enable-tls --email EMAIL]
  ingress llm --dev | --domain DOMAIN [--enable-tls --email EMAIL] [--namespace NS] [--service NAME]
  nv-ingest deploy [flags...]          # wraps platform/gke/deploy_nv_ingest.sh
  nims deploy [flags...]               # wraps platform/gke/deploy_nvidia_nims.sh
  nims status
  nims reranker [--namespace NS] [--ngc-api-key KEY] [--yes]
  runai setup [--dev|--prod] [--domain DOMAIN] [--email EMAIL] [--skip-nemo] [--continue] [--uid UID] [--client-secret SECRET] [--install-metrics-server] [--prometheus]
  volcano {status|install|uninstall} [--namespace NS]
  monitor lb [--watch]
  validate [--no-bastion] [--ingress-max-body-size SIZE]
  deploy [--profile dev|prod|full] [--domain DOMAIN] [--email EMAIL] [--port-forward] [--local] [--platform gke|eks|rke2] [--no-detect] [--dry-run] [--install-metrics-server] [--prometheus] [--secrets vault|gcp-sm|1password] [--scheduler auto|volcano|runai] [--install-volcano|--no-install-volcano]
  env init [--yes] [--non-interactive]
  status
  diagnose
  troubleshoot <gpu-operator|nv-ingest|nemo|ingress|lb>
  configure secrets [--namespace ns] [--ngc-api-key KEY] [--yes]
  destroy [--keep-ingress] [--keep-gpu-operator] [--platform gke|eks|rke2]
  preflight gke-gpu
  fix gke-gpu-conflicts [--yes]
  completion {bash|zsh}

Examples:
  scripts/cli.sh nginx controller --yes
  scripts/cli.sh nginx ingress --target all --profile high_throughput --yes
  scripts/cli.sh nv-ingest deploy --ngc-api-key nvapi-xxx --namespace nv-ingest
  scripts/cli.sh nims deploy --ngc-api-key nvapi-xxx --namespace nemo-microservices
  scripts/cli.sh deploy --profile dev
  scripts/cli.sh deploy --profile prod --domain example.com --email admin@example.com
  scripts/cli.sh env init --yes
EOF
}

cmd=${1:-}
shift || true

case "$cmd" in
completion)
	# Output simple shell completion definitions
	shell=${1:-}
	shift || true
	case "$shell" in
	bash)
		cat <<'BASH_EOF'
_ds_cli_completions() {
	local cur prev opts
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	opts="nginx deploy ingress nv-ingest nims runai monitor validate preflight fix status diagnose env port-forward troubleshoot configure destroy completion help"
	COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
	return 0
}
complete -F _ds_cli_completions ./scripts/cli.sh scripts/cli.sh
BASH_EOF
		;;
	zsh)
		cat <<'ZSH_EOF'
#compdef scripts/cli.sh
_ds_cli_commands=(nginx deploy ingress nv-ingest nims runai monitor validate preflight fix status diagnose env port-forward troubleshoot configure destroy completion help)
_arguments '*:command:(_ds_cli_commands)'
ZSH_EOF
		;;
	*)
		echo "Specify shell: bash|zsh"
		;;
	esac
	;;
nginx)
	sub=${1:-}
	shift || true
	case "$sub" in
	controller)
		exec "$SCRIPT_DIR/platform/gke/patch_nginx_controller_1gb.sh" --controller "$@"
		;;
	ingress)
		exec "$SCRIPT_DIR/platform/gke/patch_nginx_controller_1gb.sh" --ingress "$@"
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
deploy)
	# One-command deployments via bastion by default
	profile="dev"
	domain=""
	email=""
	local_flag="false"
	port_forward="false"
	platform=""
	skip_detect="false"
	dry_run_flag="false"
	install_metrics="false"
	install_prom="false"
	secrets_mgr="k8s"
	nemo_scheduler=""
	install_volcano=""
	pass_rest=()
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--profile)
			profile="$2"
			shift 2
			;;
		--domain)
			domain="$2"
			shift 2
			;;
		--email)
			email="$2"
			shift 2
			;;
		--local)
			local_flag="true"
			shift
			;;
		--platform)
			platform="$2"
			shift 2
			;;
		--no-detect)
			skip_detect="true"
			shift
			;;
		--dry-run)
			dry_run_flag="true"
			shift
			;;
		--install-metrics-server)
			install_metrics="true"
			shift
			;;
		--prometheus)
			install_prom="true"
			shift
			;;
		--secrets)
			# shellcheck disable=SC2034
			secrets_mgr="$2"
			shift 2
			;;
		--port-forward)
			port_forward="true"
			shift
			;;
		--scheduler)
			nemo_scheduler="$2"
			shift 2
			;;
		--install-volcano)
			install_volcano="true"
			shift
			;;
		--no-install-volcano)
			install_volcano="false"
			shift
			;;
		*)
			pass_rest+=("$1")
			shift
			;;
		esac
	done

	# Platform auto-detect if not provided
	if [ -z "$platform" ] && [ "$skip_detect" != "true" ] && [ -f "$SCRIPT_DIR/platform/common/platform_detect.sh" ]; then
		echo "ℹ️  INFO: Detecting platform..."
		# shellcheck source=/dev/null
		source "$SCRIPT_DIR/platform/common/platform_detect.sh" || true
		# Some sourced helpers set SCRIPT_DIR for their own context; restore CLI root dir for this script
		SCRIPT_DIR="$CLI_DIR"
		if type auto_detect_platform >/dev/null 2>&1; then
			if command -v timeout >/dev/null 2>&1; then
				# Run auto-detection in a subshell guarded by timeout
				detected_platform="$(timeout 8 bash -lc 'auto_detect_platform' 2>/dev/null || true)"
				if [ -n "$detected_platform" ]; then
					platform="$detected_platform"
				fi
			else
				platform="$(auto_detect_platform)"
			fi
		fi
		if [ -z "$platform" ] || [ "$platform" = "unknown" ]; then
			echo "⚠️  WARNING: Platform detection timed out or returned unknown. Defaulting to gke. Use --platform to override or --no-detect to skip."
			platform="gke"
		else
			echo "ℹ️  INFO: Detected platform=$platform"
		fi
	fi
	if [ -z "$platform" ]; then platform="gke"; fi

	args=()
	case "$profile" in
	dev | development)
		# Ensure NIMs (embedder+reranker) are included by default in dev
		export DEPLOY_NVIDIA_NIMS=true
		args+=("--development" "--deploy-nv-ingest")
		;;
	prod | production)
		if [ -z "$domain" ] || [ -z "$email" ]; then
			echo "ERROR: --domain and --email are required for --profile prod" >&2
			safe_exit 1 "Missing required parameters for production profile"
		fi
		args+=("--production-ready" "--deploy-nv-ingest" "--domain" "$domain" "--email" "$email")
		;;
	full)
		if [ -n "$domain" ] && [ -n "$email" ]; then
			args+=("--full-stack" "--runai" "--deploy-nv-ingest" "--domain" "$domain" "--email" "$email")
		else
			args+=("--full-stack" "--runai" "--deploy-nv-ingest")
		fi
		;;
	*)
		echo "ERROR: unknown --profile '$profile' (expected dev|prod|full)" >&2
		safe_exit 1 "Invalid profile specified"
		;;
	esac

	# Dry-run propagation
	if [ "$dry_run_flag" = "true" ]; then export DRY_RUN=true; fi

	# Export secrets manager selection for downstream scripts (optional use)
	export SECRETS_MANAGER="$secrets_mgr"

	# Propagate scheduler-related flags as env for downstream scripts
	if [ -n "$nemo_scheduler" ]; then export NEMO_SCHEDULER="$nemo_scheduler"; fi
	if [ -n "$install_volcano" ]; then export INSTALL_VOLCANO="$install_volcano"; fi

	if [ "$local_flag" = "true" ]; then
		# Local orchestration (no bastion)
		echo "ℹ️  INFO: Running local deployment (no bastion) on platform=$platform"
		set -e
		# 0) Optional metrics server
		if [ "$install_metrics" = "true" ]; then
			kubectl get ns kube-system >/dev/null 2>&1 || true
			kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml || true
		fi
		# 0b) Optional Prometheus stack
		if [ "$install_prom" = "true" ]; then
			helm repo add prometheus-community https://prometheus-community.github.io/helm-charts >/dev/null 2>&1 || true
			helm repo update >/dev/null 2>&1 || true
			helm upgrade --install kube-prometheus-stack prometheus-community/kube-prometheus-stack -n monitoring --create-namespace --wait || true
		fi
		# 1) GPU Operator
		if [ "$dry_run_flag" = "true" ]; then
			"$SCRIPT_DIR/core/deploy_gpu_operator.sh" --platform "$platform" --dry-run
		else
			"$SCRIPT_DIR/core/deploy_gpu_operator.sh" --platform "$platform"
		fi
		# 2) NGINX controller baseline
		"$SCRIPT_DIR/platform/gke/patch_nginx_controller_1gb.sh" --controller --yes
		# 3) NV-Ingest
		if [ "$dry_run_flag" = "true" ]; then
			if [ -n "${NGC_API_KEY:-}" ]; then "$SCRIPT_DIR/platform/gke/deploy_nv_ingest.sh" --nvidia-api-key "$NGC_API_KEY" --dry-run; else "$SCRIPT_DIR/platform/gke/deploy_nv_ingest.sh" --dry-run; fi
		else
			if [ -n "${NGC_API_KEY:-}" ]; then "$SCRIPT_DIR/platform/gke/deploy_nv_ingest.sh" --nvidia-api-key "$NGC_API_KEY"; else "$SCRIPT_DIR/platform/gke/deploy_nv_ingest.sh"; fi
		fi
		# 4) NVIDIA NIMs
		if [ -n "${NGC_API_KEY:-}" ]; then "$SCRIPT_DIR/platform/gke/deploy_nvidia_nims.sh" --nvidia-api-key "$NGC_API_KEY"; else "$SCRIPT_DIR/platform/gke/deploy_nvidia_nims.sh"; fi
		# 5) Ingress setup
		if { [ "$profile" = "prod" ] || [ "$profile" = "production" ] || [ "$profile" = "full" ]; } && [ -n "$domain" ] && [ -n "$email" ]; then
			# TLS path (already implemented below)
			:
		else
			# Dev nip.io fallback if domain is empty
			if [ -z "$domain" ]; then
				echo "ℹ️  INFO: Deriving dev domain via nip.io"
				# Ensure ingress-nginx exists and get LB IP
				for _ in {1..60}; do
					LB_IP=$(kubectl get svc -n ingress-nginx -l app.kubernetes.io/component=controller -o jsonpath='{.items[0].status.loadBalancer.ingress[0].ip}' 2>/dev/null || echo "")
					if [ -n "$LB_IP" ]; then
						break
					fi
					sleep 5
				done
				if [ -n "$LB_IP" ]; then
					domain="$LB_IP.nip.io"
					echo "ℹ️  INFO: Using domain=$domain"
				fi
			fi
		fi
		# TLS ingresses for prod/full
		if { [ "$profile" = "prod" ] || [ "$profile" = "production" ] || [ "$profile" = "full" ]; } && [ -n "$domain" ] && [ -n "$email" ]; then
			# Ensure cert-manager and apply TLS ingresses (already in file)
			:
		fi
		# If domain present but not TLS (dev), create non-TLS ingresses
		if [ -n "$domain" ] && { [ "$profile" = "dev" ] || [ "$profile" = "development" ]; }; then
			NVNS="${NVINGEST_NAMESPACE:-nv-ingest}"
			NMNS="${NEMO_NAMESPACE:-nemo-microservices}"
			MAX_BODY_SIZE_LOCAL="${INGRESS_MAX_BODY_SIZE:-3g}"
			WLA="${ALLOWED_IPS:-}"
			WL_ANNOT_LINE=""
			if [ -n "$WLA" ]; then WL_ANNOT_LINE="    nginx.ingress.kubernetes.io/whitelist-source-range: \"$WLA\""; fi
			cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: nv-ingest-ingress
  namespace: $NVNS
  annotations:
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/rewrite-target: /
    nginx.ingress.kubernetes.io/proxy-body-size: "$MAX_BODY_SIZE_LOCAL"
    nginx.ingress.kubernetes.io/client-max-body-size: "$MAX_BODY_SIZE_LOCAL"
    nginx.ingress.kubernetes.io/proxy-read-timeout: "600"
    nginx.ingress.kubernetes.io/proxy-send-timeout: "600"
    nginx.ingress.kubernetes.io/proxy-connect-timeout: "600"
$([ -n "$WL_ANNOT_LINE" ] && echo "$WL_ANNOT_LINE")
spec:
  rules:
  - host: nv-ingest.$domain
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: nv-ingest
            port:
              number: 7670
EOF
			cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: embedder-ingress
  namespace: $NMNS
  annotations:
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/rewrite-target: /
$([ -n "$WL_ANNOT_LINE" ] && echo "$WL_ANNOT_LINE")
spec:
  rules:
  - host: embedder.$domain
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: nemo-embedder-nim-llm
            port:
              number: 8000
EOF
			cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: reranker-ingress
  namespace: $NMNS
  annotations:
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/rewrite-target: /
$([ -n "$WL_ANNOT_LINE" ] && echo "$WL_ANNOT_LINE")
spec:
  rules:
  - host: reranker.$domain
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: nemo-reranker-nim-llm
            port:
              number: 8000
EOF
		fi
		# TLS ingresses for prod/full (existing TLS creation present earlier)
		if { [ "$profile" = "prod" ] || [ "$profile" = "production" ] || [ "$profile" = "full" ]; } && [ -n "$domain" ] && [ -n "$email" ]; then
			# Ensure cert-manager and apply TLS ingresses (already in file)
			:
		fi
		# Validation
		VIA_BASTION=false "$SCRIPT_DIR/testing/validate-deployment.sh"
		# Optional local port-forward
		if [ "$port_forward" = "true" ]; then
			LOCAL_PORT_FORWARD=true "$SCRIPT_DIR/setup-nvidia-nims-portforward.sh" || true
		fi
		exit 0
	else
		# Bastion-based orchestration (GKE-only)
		if [ "$platform" != "gke" ]; then
			echo "ERROR: Bastion flow currently supports only GKE. Use --local for $platform." >&2
			safe_exit 1 "Unsupported platform for bastion deployment"
		fi
		# Optional port-forward convenience
		if [ "$port_forward" = "true" ]; then args+=("--port-forward"); fi
		if [ "$install_metrics" = "true" ]; then args+=("--install-metrics-server"); fi
		if [ "$install_prom" = "true" ]; then args+=("--prometheus"); fi
		# Run preflight (soft-fail)
		if ! "$SCRIPT_DIR/preflight.sh"; then
			echo "⚠️  Preflight reported issues. Continuing deployment; fix recommended." >&2
		fi
		"$SCRIPT_DIR/platform/gke/deploy_to_bastion.sh" "${args[@]}"
	fi
	;;
ingress)
	sub=${1:-}
	shift || true
	case "$sub" in
	whitelist)
		# Map --allowed-ips CSV to canonical patcher --whitelist CSV
		allowed=""
		pass_flags=()
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--allowed-ips)
				allowed="$2"
				shift 2
				;;
			--yes | --dry-run)
				pass_flags+=("$1")
				shift
				;;
			*)
				pass_flags+=("$1")
				shift
				;;
			esac
		done
		if [ -z "$allowed" ]; then
			allowed="${ALLOWED_IPS:-}"
		fi
		if [ -z "$allowed" ]; then
			echo "ERROR: --allowed-ips is required or ALLOWED_IPS env must be set" >&2
			exit 1
		fi
		exec "$SCRIPT_DIR/platform/gke/patch_nginx_controller_1gb.sh" --ingress all --profile large_upload --whitelist "$allowed" "${pass_flags[@]}"
		;;
	status)
		if type run_via_bastion >/dev/null 2>&1 && run_via_bastion "true" >/dev/null 2>&1; then
			echo "(bastion) Ingress controller svc:"
			run_via_bastion "kubectl -n ingress-nginx get svc -l app.kubernetes.io/component=controller -o wide" || true
			echo "\n(bastion) Ingresses (nv-ingest, embedder, reranker):"
			run_via_bastion "kubectl get ingress -A | grep -E 'nv-ingest|embedder|reranker'" || true
		else
			echo "(local) Ingress controller svc:"
			kubectl -n ingress-nginx get svc -l app.kubernetes.io/component=controller -o wide 2>/dev/null || true
			echo "\n(local) Ingresses (nv-ingest, embedder, reranker):"
			kubectl get ingress -A 2>/dev/null | grep -E 'nv-ingest|embedder|reranker' || true
		fi
		;;
	reranker)
		# Create reranker-only ingress using existing deploy_ingress.sh
		domain=""
		tls=false
		email=""
		dev=false
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--domain)
				domain="$2"
				shift 2
				;;
			--enable-tls)
				tls=true
				shift
				;;
			--email)
				email="$2"
				shift 2
				;;
			--dev)
				dev=true
				shift
				;;
			*) shift ;;
			esac
		done
		if [ "$dev" = true ]; then
			CREATE_EMBEDDER_INGRESS=false CREATE_RERANKER_INGRESS=true exec "$SCRIPT_DIR/platform/gke/deploy_ingress.sh" --dev
		else
			if [ -z "$domain" ]; then
				echo "ERROR: --domain required unless --dev used" >&2
				exit 1
			fi
			if [ "$tls" = true ] && [ -z "$email" ]; then
				echo "ERROR: --email required with --enable-tls" >&2
				exit 1
			fi
			if [ "$tls" = true ]; then
				CREATE_EMBEDDER_INGRESS=false CREATE_RERANKER_INGRESS=true exec "$SCRIPT_DIR/platform/gke/deploy_ingress.sh" --domain "$domain" --enable-tls --email "$email"
			else
				CREATE_EMBEDDER_INGRESS=false CREATE_RERANKER_INGRESS=true exec "$SCRIPT_DIR/platform/gke/deploy_ingress.sh" --domain "$domain"
			fi
		fi
		;;
	llm)
		# Create LLM-only ingress using existing deploy_ingress.sh
		domain=""
		tls=false
		email=""
		dev=false
		llm_ns="${NEMO_NAMESPACE:-nemo-microservices}"
		llm_svc="${LLM_SERVICE_NAME:-}"
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--domain)
				domain="$2"
				shift 2
				;;
			--enable-tls)
				tls=true
				shift
				;;
			--email)
				email="$2"
				shift 2
				;;
			--namespace)
				llm_ns="$2"
				shift 2
				;;
			--service)
				llm_svc="$2"
				shift 2
				;;
			--dev)
				dev=true
				shift
				;;
			*)
				shift
				;;
			esac
		done
		if [ "$dev" = true ]; then
			CREATE_LLM_INGRESS=true LLM_NAMESPACE="$llm_ns" LLM_SERVICE_NAME="$llm_svc" exec "$SCRIPT_DIR/platform/gke/deploy_ingress.sh" --dev
		else
			if [ -z "$domain" ]; then
				echo "ERROR: --domain required unless --dev used" >&2
				exit 1
			fi
			if [ "$tls" = true ] && [ -z "$email" ]; then
				echo "ERROR: --email required with --enable-tls" >&2
				exit 1
			fi
			if [ "$tls" = true ]; then
				CREATE_LLM_INGRESS=true LLM_NAMESPACE="$llm_ns" LLM_SERVICE_NAME="$llm_svc" exec "$SCRIPT_DIR/platform/gke/deploy_ingress.sh" --domain "$domain" --enable-tls --email "$email"
			else
				CREATE_LLM_INGRESS=true LLM_NAMESPACE="$llm_ns" LLM_SERVICE_NAME="$llm_svc" exec "$SCRIPT_DIR/platform/gke/deploy_ingress.sh" --domain "$domain"
			fi
		fi
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
troubleshoot)
	sub=${1:-}
	shift || true
	case "$sub" in
	gpu-operator)
		"$SCRIPT_DIR/preflight.sh" || true
		;;
	nv-ingest)
		if [ -f "$SCRIPT_DIR/troubleshooting/monitor_nv_ingest_health.sh" ]; then
			exec "$SCRIPT_DIR/troubleshooting/monitor_nv_ingest_health.sh" "$@"
		else
			echo "monitor_nv_ingest_health.sh not found" >&2
			exit 1
		fi
		;;
	nemo)
		if [ -f "$SCRIPT_DIR/testing/diagnose-nemo-deployment.sh" ]; then
			exec "$SCRIPT_DIR/testing/diagnose-nemo-deployment.sh" "$@"
		else
			echo "diagnose-nemo-deployment.sh not found" >&2
			exit 1
		fi
		;;
	ingress | lb)
		exec "$SCRIPT_DIR/platform/gke/monitor_load_balancing.sh" "$@"
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
nv-ingest)
	sub=${1:-}
	shift || true
	case "$sub" in
	deploy)
		exec "$SCRIPT_DIR/platform/gke/deploy_nv_ingest.sh" "$@"
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
nims)
	sub=${1:-}
	shift || true
	case "$sub" in
	deploy)
		exec "$SCRIPT_DIR/platform/gke/deploy_nvidia_nims.sh" "$@"
		;;
	status)
		# Show NIM pods/services/endpoints using bastion if available
		if type run_via_bastion >/dev/null 2>&1 && run_via_bastion "true" >/dev/null 2>&1; then
			echo "(bastion) NIM pods:"
			run_via_bastion "kubectl -n nemo-microservices get pods | grep -E 'embedder|reranker'" || true
			echo "\n(bastion) NIM services:"
			run_via_bastion "kubectl -n nemo-microservices get svc | grep -E 'embedder|reranker'" || true
			echo "\n(bastion) Ingresses:"
			run_via_bastion "kubectl -n nemo-microservices get ingress || true" || true
		else
			echo "(local) NIM pods:"
			kubectl -n nemo-microservices get pods 2>/dev/null | grep -E 'embedder|reranker' || true
			echo "\n(local) NIM services:"
			kubectl -n nemo-microservices get svc 2>/dev/null | grep -E 'embedder|reranker' || true
			echo "\n(local) Ingresses:"
			kubectl -n nemo-microservices get ingress 2>/dev/null || true
		fi
		;;
	reranker)
		# Minimal reranker-only deploy via bastion-aware script
		ns="${NEMO_NAMESPACE:-nemo-microservices}"
		key="${NGC_API_KEY:-}"
		pass=()
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--namespace)
				ns="$2"
				shift 2
				;;
			--ngc-api-key)
				key="$2"
				shift 2
				;;
			--yes)
				export YES=true
				shift
				;;
			*)
				pass+=("$1")
				shift
				;;
			esac
		done
		if [ -z "$key" ]; then
			echo "ERROR: NGC_API_KEY must be set or provided via --ngc-api-key" >&2
			safe_exit 1 "Missing required NGC API key"
		fi
		# Ensure secrets in target namespace
		run_via_bastion "kubectl create namespace \"$ns\" --dry-run=client -o yaml | kubectl apply -f -" >/dev/null 2>&1 || true
		run_via_bastion "kubectl create secret generic ngc-api --namespace=\"$ns\" --from-literal=NGC_API_KEY=\"$key\" --dry-run=client -o yaml | kubectl apply -f -"
		# Call underlying installer with --only reranker
		exec "$SCRIPT_DIR/platform/gke/deploy_nvidia_nims.sh" --ngc-api-key "$key" --namespace "$ns" --only reranker
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
runai)
	sub=${1:-}
	shift || true
	case "$sub" in
	setup)
		mode="dev"
		domain=""
		email=""
		skip_nemo="false"
		port_forward="true"
		install_metrics="false"
		install_prom="false"
		pass_rest=()
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--dev)
				mode="dev"
				shift
				;;
			--prod | --production)
				mode="prod"
				shift
				;;
			--domain)
				domain="$2"
				shift 2
				;;
			--email)
				email="$2"
				shift 2
				;;
			--skip-nemo)
				skip_nemo="true"
				shift
				;;
			--backend-only)
				export DEPLOY_RUNAI_BACKEND_ONLY=true
				shift
				;;
			--continue)
				export RUNAI_CONTINUE_INSTALL=true
				shift
				;;
			--uid)
				export RUNAI_UID="$2"
				shift 2
				;;
			--client-secret)
				export RUNAI_CLIENT_SECRET="$2"
				shift 2
				;;
			*)
				pass_rest+=("$1")
				shift
				;;
			esac
		done
		args=("--runai")
		if [ "$mode" = "prod" ]; then
			if [ -z "$domain" ] || [ -z "$email" ]; then
				echo "ERROR: --domain and --email are required for --prod" >&2
				safe_exit 1 "Missing required parameters for production Run:AI setup"
			fi
			args+=("--production-ready" "--domain" "$domain" "--email" "$email")
		else
			args+=("--development")
			if [ -n "$domain" ]; then args+=("--domain" "$domain"); fi
			if [ -n "$email" ]; then args+=("--email" "$email"); fi
		fi
		# Forward skip-nemo request to underlying deploy script
		if [ "$skip_nemo" = "true" ]; then
			args+=("--skip-nemo")
		fi
		# Default to backend-only and auto port-forward for guided setup
		export DEPLOY_RUNAI_BACKEND_ONLY=true
		args+=("--port-forward")
		if [ "$install_metrics" = "true" ]; then export INSTALL_METRICS_SERVER=true; fi
		if [ "$install_prom" = "true" ]; then export INSTALL_PROMETHEUS=true; fi
		if ! "$SCRIPT_DIR/preflight.sh"; then
			echo "⚠️  Preflight reported issues. Continuing Run:AI setup; fix recommended." >&2
		fi
		# Propagate or clear backend-only flag depending on continuation stage
		if [ -n "${RUNAI_CONTINUE_INSTALL:-}" ]; then
			unset DEPLOY_RUNAI_BACKEND_ONLY || true
		else
			if [ -n "${DEPLOY_RUNAI_BACKEND_ONLY:-}" ]; then export DEPLOY_RUNAI_BACKEND_ONLY=true; fi
		fi
		"$SCRIPT_DIR/platform/gke/deploy_to_bastion.sh" "${args[@]}"
		# Guided continuation flow
		if [ -n "${DEPLOY_RUNAI_BACKEND_ONLY:-}" ] && [ -z "${RUNAI_CONTINUE_INSTALL:-}" ]; then
			printf "\n✅ Run:AI backend bootstrapped. Next steps:\n"
			printf "1) Open the UI via local tunnel: ./scripts/testing/diagnose-runai-ui.sh start-traefik\n"
			printf "   This will print a URL like http://localhost:<PORT>/\n"
			printf "2) In the UI, create the cluster and copy UID and Client Secret.\n"
			printf "3) Continue the install: export RUNAI_UID=<uid> RUNAI_CLIENT_SECRET=<secret>\n"
			printf "   Then rerun: ./scripts/cli.sh runai setup --%s --skip-nemo --continue\n\n" "$mode"
			# Auto-open tunnel if user requested port-forward
			"$SCRIPT_DIR/testing/diagnose-runai-ui.sh" start-traefik || true
		fi
		env VIA_BASTION="${VIA_BASTION:-true}" "$SCRIPT_DIR/testing/validate-deployment.sh"
		;;
	volcano)
		sub=${1:-}
		shift || true
		case "$sub" in
		status | install | uninstall)
			exec "$SCRIPT_DIR/core/deploy_volcano.sh" "$sub" "$@"
			;;
		*)
			usage
			exit 1
			;;
		esac
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
monitor)
	sub=${1:-}
	shift || true
	case "$sub" in
	lb)
		exec "$SCRIPT_DIR/platform/gke/monitor_load_balancing.sh" "$@"
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
port-forward)
	exec "$SCRIPT_DIR/setup-nvidia-nims-portforward.sh" "$@"
	;;
validate)
	# Wraps testing/validate-deployment.sh with optional env toggles
	vb=${VIA_BASTION:-true}
	ims=${INGRESS_MAX_BODY_SIZE:-}
	pass_flags=()
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--no-bastion)
			vb=false
			shift
			;;
		--ingress-max-body-size)
			ims="$2"
			shift 2
			;;
		*)
			pass_flags+=("$1")
			shift
			;;
		esac
	done
	if [ -z "$ims" ]; then
		ims=3g
	fi
	if [ ${#pass_flags[@]} -gt 0 ]; then
		exec env VIA_BASTION="$vb" INGRESS_MAX_BODY_SIZE="$ims" "$SCRIPT_DIR/testing/validate-deployment.sh" "${pass_flags[@]}"
	else
		exec env VIA_BASTION="$vb" INGRESS_MAX_BODY_SIZE="$ims" "$SCRIPT_DIR/testing/validate-deployment.sh"
	fi
	;;
preflight)
	sub=${1:-}
	shift || true
	case "$sub" in
	gke-gpu)
		echo "Preflight: Node OS image and GKE GPU conflicts"
		kubectl get nodes -o jsonpath='{.items[*].status.nodeInfo.osImage}' 2>/dev/null | tr ' ' '\n' || true
		echo "-- Conflicting kube-system DS (nvidia):"
		kubectl -n kube-system get ds -o name 2>/dev/null | grep -Ei 'nvidia.*device.*plugin|nvidia-driver-installer' || true
		echo "-- Allocatable GPUs:"
		kubectl get nodes -o custom-columns='NAME:.metadata.name,GPUs:.status.allocatable.nvidia\.com/gpu' --no-headers 2>/dev/null || true
		;;
	"")
		exec "$SCRIPT_DIR/preflight.sh"
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
fix)
	sub=${1:-}
	shift || true
	case "$sub" in
	gke-gpu-conflicts)
		yes_flag=false
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--yes)
				yes_flag=true
				shift
				;;
			*) shift ;;
			esac
		done
		echo "Conflicting DS in kube-system matching NVIDIA:"
		dslist=$(kubectl -n kube-system get ds -o name 2>/dev/null | grep -Ei 'nvidia.*device.*plugin|nvidia-driver-installer' || true)
		if [ -z "$dslist" ]; then
			echo "None found"
			exit 0
		fi
		echo "$dslist"
		if [ "$yes_flag" = true ]; then
			echo "Removing conflicts..."
			for ds in $dslist; do kubectl -n kube-system delete "$ds" || true; done
			echo "Done. Re-run 'scripts/cli.sh validate' to verify allocatable GPUs."
		else
			echo "Dry run. Use --yes to delete the above DaemonSets."
		fi
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
status)
	# Optional: --no-bastion to force local kubeconfig
	use_bastion="${VIA_BASTION:-true}"
	context="${KUBECTL_CONTEXT:-}"
	kubeconfig="${KUBECONFIG:-}"
	extended=false
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--no-bastion)
			use_bastion=false
			shift
			;;
		--context)
			context="$2"
			shift 2
			;;
		--kubeconfig)
			kubeconfig="$2"
			shift 2
			;;
		--extended)
			extended=true
			shift
			;;
		*) shift ;;
		esac
	done
	if [ "$use_bastion" = true ] && type run_via_bastion >/dev/null 2>&1 && run_via_bastion "true" >/dev/null 2>&1; then
		# Bastion mode
		echo "(bastion) Cluster info:"
		run_via_bastion "kubectl cluster-info" || echo "(no cluster-info via bastion)"
		printf "\n(bastion) Nodes:\n"
		run_via_bastion "kubectl get nodes -o wide" || echo "(no nodes via bastion)"
		printf "\n(bastion) Ingress controller svc:\n"
		run_via_bastion "kubectl -n ingress-nginx get svc -l app.kubernetes.io/component=controller -o wide" || echo "(no ingress controller via bastion)"
		printf "\n(bastion) Key services:\n"
		run_via_bastion "kubectl get svc -A | grep -E 'nv-ingest|embedder|reranker'" || echo "(no key services via bastion)"
		printf "\n(bastion) Ingresses:\n"
		run_via_bastion "kubectl get ingress -A" || echo "(no ingresses via bastion)"
		if [ "$extended" = true ]; then
			printf "\n(bastion) Troubleshooting (extended):\n"
			run_via_bastion "kubectl get pods -A --field-selector=status.phase!=Running | head -n 50" || true
			run_via_bastion "kubectl -n gpu-operator get pods" || true
			run_via_bastion "kubectl -n nemo-microservices get pods | grep -E 'embedder|reranker'" || true
			run_via_bastion "kubectl get nodes -o custom-columns=NAME:.metadata.name,GPUs:.status.allocatable.nvidia.com/gpu --no-headers" || true
		fi
	else
		# Local mode
		KC=(kubectl)
		[ -n "$context" ] && KC+=(--context "$context")
		[ -n "$kubeconfig" ] && KC+=(--kubeconfig "$kubeconfig")
		echo "(local) Cluster info:"
		"${KC[@]}" cluster-info 2>/dev/null || echo "(no cluster-info; set kube context or use bastion)"
		printf "\n(local) Context: \n"
		"${KC[@]}" config current-context 2>/dev/null || true
		printf "\n(local) Nodes:\n"
		"${KC[@]}" get nodes -o wide 2>/dev/null || echo "(no nodes; cluster not reachable)"
		printf "\n(local) Ingress controller svc:\n"
		"${KC[@]}" -n ingress-nginx get svc -l app.kubernetes.io/component=controller -o wide 2>/dev/null || echo "(no ingress controller or unreachable)"
		printf "\n(local) Key services:\n"
		"${KC[@]}" get svc -A 2>/dev/null | grep -E 'nv-ingest|embedder|reranker' || echo "(no nv-ingest/embedder/reranker services found)"
		printf "\n(local) Ingresses:\n"
		"${KC[@]}" get ingress -A 2>/dev/null || echo "(no ingresses or unreachable)"
		if [ "$extended" = true ]; then
			printf "\n(local) Troubleshooting (extended):\n"
			"${KC[@]}" get pods -A --field-selector=status.phase!=Running 2>/dev/null | head -n 50 || true
			"${KC[@]}" -n gpu-operator get pods 2>/dev/null || true
			"${KC[@]}" -n nemo-microservices get pods 2>/dev/null | grep -E 'embedder|reranker' || true
			"${KC[@]}" get nodes -o custom-columns=NAME:.metadata.name,GPUs:.status.allocatable.nvidia.com/gpu --no-headers 2>/dev/null || true
		fi
	fi
	;;
diagnose)
	# First run validator (bastion-aware by default)
	if ! env VIA_BASTION="${VIA_BASTION:-true}" "$SCRIPT_DIR/testing/validate-deployment.sh"; then
		printf "\nTop suggestions:\n"
		echo " - If pods Pending: check node resources and GPU Operator status"
		echo " - If ImagePullBackOff: verify NVIDIA/NGC keys and registry access"
		echo " - If ingress 404/timeout: confirm LB IP and DNS pointing, or use port-forward"
	fi
	# Optional subcommands
	sub=${1:-}
	shift || true
	case "$sub" in
	detect)
		printf "\n🔎 Diagnosing platform detection...\n"
		(kubectl config current-context 2>/dev/null || true)
		if command -v kubectl >/dev/null 2>&1; then
			kubectl --request-timeout=5s cluster-info >/dev/null 2>&1 && echo "kubectl: reachable" || echo "kubectl: unreachable (5s timeout)"
		fi
		if type get_bastion_cmd >/dev/null 2>&1; then
			b=$(get_bastion_cmd 2>/dev/null || true)
			[ -n "$b" ] && echo "bastion: command available" || echo "bastion: command not available (ensure terraform outputs exist)"
		else
			echo "bastion: helper not loaded"
		fi
		echo "Hint: If local kubectl is slow, run: ./scripts/cli.sh deploy --profile dev --platform gke"
		;;
	"" | *) ;;
	esac
	;;
configure)
	sub=${1:-}
	shift || true
	case "$sub" in
	secrets)
		local_ns=""
		local_key="${NGC_API_KEY:-}"
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--namespace)
				local_ns="$2"
				shift 2
				;;
			--ngc-api-key)
				local_key="$2"
				shift 2
				;;
			--yes)
				export YES=true
				shift
				;;
			*) shift ;;
			esac
		done
		if [ -z "$local_key" ]; then
			echo "ERROR: NGC_API_KEY must be provided via env or --ngc-api-key" >&2
			exit 1
		fi
		ns_list=()
		if [ -n "$local_ns" ]; then ns_list+=("$local_ns"); else ns_list+=("nv-ingest" "nemo-microservices"); fi
		for ns in "${ns_list[@]}"; do
			if [ -n "${DRY_RUN:-}" ]; then
				echo "DRY-RUN: would ensure namespace $ns exists"
				echo "DRY-RUN: would create/update secret 'ngc-api' in namespace $ns"
				echo "DRY-RUN: would create/update docker-registry secret 'ngc-secret' in namespace $ns"
			else
				k_kubectl create namespace "$ns" --dry-run=client -o yaml | k_kubectl apply -f - >/dev/null 2>&1 || true
				k_kubectl create secret generic ngc-api --namespace="$ns" --from-literal=NGC_API_KEY="$local_key" --dry-run=client -o yaml | k_kubectl apply -f -
				k_kubectl create secret docker-registry ngc-secret --docker-server=nvcr.io --docker-username='$oauthtoken' --docker-password="$local_key" --namespace="$ns" --dry-run=client -o yaml | k_kubectl apply -f -
			fi
			echo "✅ SUCCESS: Created/updated NGC secrets in namespace: $ns"
		done
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
env)
	sub=${1:-}
	shift || true
	case "$sub" in
	init)
		yes_flag=false
		nonint=false
		while [[ $# -gt 0 ]]; do
			case "$1" in
			--yes)
				yes_flag=true
				shift
				;;
			--non-interactive)
				nonint=true
				shift
				;;
			*) shift ;;
			esac
		done
		if [ ! -f "$SCRIPT_DIR/../env.template" ]; then
			echo "env.template not found" >&2
			exit 1
		fi
		if [ ! -f "$SCRIPT_DIR/../.env" ]; then cp "$SCRIPT_DIR/../env.template" "$SCRIPT_DIR/../.env"; fi
		if [ "$nonint" = false ] && [ "$yes_flag" = false ]; then
			read -r -p "NGC_API_KEY: " NGC_API_KEY || true
			read -r -p "GCP_PROJECT_ID: " GCP_PROJECT_ID || true
			read -r -p "GCP_ZONE (e.g., us-central1-c): " GCP_ZONE || true
			export NGC_API_KEY GCP_PROJECT_ID GCP_ZONE
		fi
		if command -v docker >/dev/null 2>&1 && [ -n "${NGC_API_KEY:-}" ]; then
			echo "$NGC_API_KEY" | docker login nvcr.io -u '$oauthtoken' --password-stdin >/dev/null 2>&1 || true
		fi
		echo "Initialized .env (edit as needed)."
		;;
	*)
		usage
		exit 1
		;;
	esac
	;;
destroy)
	keep_ingress=false
	keep_gpuop=false
	plat="${PLATFORM:-gke}"
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--keep-ingress)
			keep_ingress=true
			shift
			;;
		--keep-gpu-operator)
			keep_gpuop=true
			shift
			;;
		--platform)
			# shellcheck disable=SC2034
			plat="$2"
			shift 2
			;;
		*) shift ;;
		esac
	done

	# Expose selected platform to environment for consistency
	export PLATFORM="$plat"
	helm list -A | grep -E "nv-ingest|nim-llm" >/dev/null 2>&1 && {
		echo "Uninstalling NV-Ingest and NIMs..."
		helm ls -n nv-ingest >/dev/null 2>&1 && helm uninstall -n nv-ingest nv-ingest || true
		helm ls -n nemo-microservices >/dev/null 2>&1 && {
			for r in $(helm ls -n nemo-microservices -q | grep -E 'embedder|reranker' || true); do helm uninstall -n nemo-microservices "$r" || true; done
		}
	} || true
	if [ "$keep_ingress" = false ]; then
		kubectl delete ingress nv-ingest-ingress -n nv-ingest 2>/dev/null || true
		kubectl delete ingress embedder-ingress -n nemo-microservices 2>/dev/null || true
		kubectl delete ingress reranker-ingress -n nemo-microservices 2>/dev/null || true
	fi
	if [ "$keep_gpuop" = false ]; then
		helm uninstall gpu-operator -n gpu-operator 2>/dev/null || true
		kubectl delete ns gpu-operator 2>/dev/null || true
		kubectl delete crd clusterpolicies.nvidia.com nvidiadrivers.nvidia.com 2>/dev/null || true
		kubectl delete clusterrole,clusterrolebinding -l app=gpu-operator -A 2>/dev/null || true
	fi
	echo "Destroy completed (best-effort)."
	;;
help | --help | -h | *)
	usage
	;;
esac
