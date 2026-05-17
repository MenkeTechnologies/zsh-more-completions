#compdef scripts/cli.sh
# Documentation: https://github.com/datastaxdevs/terraform-nvidia-runai-stack/blob/main/scripts/cli.sh
# Reference accessed: 2026-05-17
# Verified: datastaxdevs/terraform-nvidia-runai-stack scripts/cli.sh
# subcommand surface (nginx, deploy, ingress, nv-ingest, nims, runai,
# volcano, monitor, validate, preflight, fix, status, diagnose, env,
# port-forward, troubleshoot, configure, destroy, completion, help).
# Removed from prior file: bogus man.archlinux.org search URL; the
# entire upstream cli.sh shell script body that the generator
# embedded by mistake (it had been included verbatim, not as
# completion code).

local curcontext="$curcontext" state line ret=1
local -a commands

commands=(
  'nginx:nginx controller/ingress operations'
  'deploy:one-command stack deployment'
  'ingress:ingress allowlist/whitelist/status/reranker/llm'
  'nv-ingest:NV-Ingest operations'
  'nims:NVIDIA NIMs operations'
  'runai:Run:AI setup'
  'volcano:Volcano scheduler operations'
  'monitor:monitor load balancer'
  'validate:validate deployment'
  'preflight:preflight checks'
  'fix:fix gke-gpu-conflicts'
  'status:show cluster status'
  'diagnose:diagnose stack health'
  'env:env init'
  'port-forward:port-forward to NIM services'
  'troubleshoot:troubleshoot subsystems'
  'configure:configure secrets'
  'destroy:tear down the stack'
  'completion:generate shell completion'
  'help:show help'
)

_arguments -C \
  '--debug[enable debug output]' \
  '--verbose[enable verbose output]' \
  '--dry-run[run without making changes]' \
  '--yes[non-interactive mode]' \
  '--non-interactive[non-interactive mode]' \
  '--env-file=[load env from file]:file:_files' \
  '--via-bastion=[run through bastion]:bool:(true false)' \
  '--namespace=[Kubernetes namespace]:namespace:' \
  '--kubeconfig=[kubeconfig path]:file:_files' \
  '--context=[kubectl context]:context:' \
  '--log-level=[log level]:level:' \
  '1: :->cmd' \
  '*::arg:->args' && ret=0

case $state in
  (cmd) _describe -t cmds 'cli.sh command' commands && ret=0 ;;
  (args)
    case $line[1] in
      (nginx)
        _arguments '*::subcmd:(controller ingress)' && ret=0 ;;
      (ingress)
        _arguments '*::subcmd:(allowlist whitelist status reranker llm)' && ret=0 ;;
      (nv-ingest)
        _arguments '*::subcmd:(deploy)' && ret=0 ;;
      (nims)
        _arguments '*::subcmd:(deploy status reranker)' && ret=0 ;;
      (runai)
        _arguments '*::subcmd:(setup)' && ret=0 ;;
      (volcano)
        _arguments '*::subcmd:(status install uninstall)' && ret=0 ;;
      (monitor)
        _arguments '*::subcmd:(lb)' && ret=0 ;;
      (troubleshoot)
        _arguments '*::subcmd:(gpu-operator nv-ingest nemo ingress lb)' && ret=0 ;;
      (configure)
        _arguments '*::subcmd:(secrets)' && ret=0 ;;
      (env)
        _arguments '*::subcmd:(init)' && ret=0 ;;
      (preflight)
        _arguments '*::subcmd:(gke-gpu)' && ret=0 ;;
      (fix)
        _arguments '*::subcmd:(gke-gpu-conflicts)' && ret=0 ;;
      (completion)
        _arguments '1:shell:(bash zsh)' && ret=0 ;;
    esac ;;
esac

return ret
