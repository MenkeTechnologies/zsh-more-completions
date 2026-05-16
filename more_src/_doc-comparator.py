#compdef doc-comparator.py doc-anonymizer.py doc-quality.py doc-master.py doc-processor.py doc-search.py doc-merger.py doc-splitter.py dms-admin.py enterprise-admin.py
# Documentation: https://man.archlinux.org/search?q=doc-comparator.py
# Reference accessed: 2026-05-16
# Source: https://github.com/svend4/daten20/blob/6ada10b80567470c87c29038150cfc04656d0f0f/scripts/completions/zsh_completion.zsh
# Repository: svend4/daten20 (scripts/completions/zsh_completion.zsh)

# Zsh completion for daten20 CLI tools
# Place this file in $fpath (e.g., ~/.zsh/completions/_daten20)

# ============================================================================
# doc-comparator.py completion
# ============================================================================
_doc_comparator() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'compare:Compare two documents'
                'analyze:Analyze document similarities'
                'batch:Batch comparison of multiple documents'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                compare)
                    _arguments \
                        '--method[Comparison method]:method:(cosine jaccard levenshtein entity all)' \
                        '--threshold[Similarity threshold]:threshold:' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json html text)' \
                        '--verbose[Verbose output]' \
                        '--help[Show help]' \
                        '*:document file:_files -g "*.pdf"'
                    ;;
                analyze|batch)
                    _arguments \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-anonymizer.py completion
# ============================================================================
_doc_anonymizer() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'scan:Scan document for PII'
                'anonymize:Anonymize PII in document'
                'deanonymize:Reverse anonymization'
                'batch:Batch process multiple documents'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                anonymize)
                    _arguments \
                        '--strategy[Anonymization strategy]:strategy:(redaction masking replacement pseudonymization generalization)' \
                        '--compliance[Compliance mode]:mode:(gdpr hipaa pci ccpa)' \
                        '--reversible[Enable reversible anonymization]' \
                        '--mapping[Mapping file for de-anonymization]:file:_files' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text)' \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
                scan)
                    _arguments \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text)' \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
                deanonymize)
                    _arguments \
                        '--mapping[Mapping file]:file:_files' \
                        '--output[Output file]:file:_files' \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-quality.py completion
# ============================================================================
_doc_quality() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'analyze:Analyze document quality'
                'batch:Batch analyze multiple documents'
                'report:Generate quality report'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                analyze)
                    _arguments \
                        '--dimensions[Quality dimensions]:dimensions:(completeness accuracy consistency readability timeliness all)' \
                        '--threshold[Pass/fail threshold]:threshold:' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text html)' \
                        '--full[Full detailed analysis]' \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-master.py completion
# ============================================================================
_doc_master() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'status:Show service status'
                'services:List available services'
                'health:Perform health check'
                'pipeline:Run processing pipeline'
                'quick-process:Quick document processing'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                quick-process)
                    _arguments \
                        '--steps[Processing steps]:steps:(parse extract classify export all)' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text)' \
                        '--verbose[Verbose output]' \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-processor.py completion
# ============================================================================
_doc_processor() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'process:Process document'
                'extract:Extract information'
                'validate:Validate document'
                'export:Export document'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                process|export)
                    _arguments \
                        '--input[Input file]:file:_files' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json txt html pdf docx)' \
                        '--extract-entities[Extract named entities]' \
                        '--validate[Validate extracted data]' \
                        '--verbose[Verbose output]' \
                        '--help[Show help]' \
                        '*:document file:_files'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-search.py completion
# ============================================================================
_doc_search() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'search:Search documents'
                'index:Index documents'
                'query:Advanced query'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                search)
                    _arguments \
                        '--query[Search query]:query:' \
                        '--type[Search type]:type:(keyword semantic fuzzy advanced)' \
                        '--limit[Result limit]:limit:' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text)' \
                        '--help[Show help]'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-merger.py completion
# ============================================================================
_doc_merger() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'merge:Merge PDF files'
                'combine:Combine documents'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                merge|combine)
                    _arguments \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(pdf)' \
                        '--toc[Add table of contents]' \
                        '--bookmarks[Preserve bookmarks]' \
                        '--help[Show help]' \
                        '*:PDF file:_files -g "*.pdf"'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# doc-splitter.py completion
# ============================================================================
_doc_splitter() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'split:Split PDF file'
                'extract:Extract pages'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                split|extract)
                    _arguments \
                        '--output-dir[Output directory]:directory:_directories' \
                        '--by[Split method]:method:(pages size bookmarks)' \
                        '--pages[Page range]:range:' \
                        '--size[Pages per file]:size:' \
                        '--help[Show help]' \
                        '*:PDF file:_files -g "*.pdf"'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# dms-admin.py completion
# ============================================================================
_dms_admin() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'users:User management'
                'documents:Document management'
                'backup:Backup database'
                'restore:Restore database'
                'stats:System statistics'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                users|documents)
                    _arguments \
                        '--user[Username]:username:' \
                        '--action[Action]:action:(create delete update list)' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text)' \
                        '--help[Show help]'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# enterprise-admin.py completion
# ============================================================================
_enterprise_admin() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*::arg:->args' \
        && return 0

    case $state in
        command)
            local -a commands
            commands=(
                'tenants:Tenant management'
                'billing:Billing management'
                'analytics:View analytics'
                'reports:Generate reports'
                'help:Show help message'
            )
            _describe 'command' commands
            ;;
        args)
            case $words[1] in
                tenants|billing|analytics)
                    _arguments \
                        '--tenant[Tenant name]:tenant:' \
                        '--action[Action]:action:(create delete update list stats)' \
                        '--period[Time period]:period:(daily weekly monthly yearly)' \
                        '--output[Output file]:file:_files' \
                        '--format[Output format]:format:(json text html)' \
                        '--help[Show help]'
                    ;;
            esac
            ;;
    esac
}

# ============================================================================
# Auto-detect which tool is being completed
# ============================================================================
case "$service" in
    doc-comparator.py)
        _doc_comparator "$@"
        ;;
    doc-anonymizer.py)
        _doc_anonymizer "$@"
        ;;
    doc-quality.py)
        _doc_quality "$@"
        ;;
    doc-master.py)
        _doc_master "$@"
        ;;
    doc-processor.py)
        _doc_processor "$@"
        ;;
    doc-search.py)
        _doc_search "$@"
        ;;
    doc-merger.py)
        _doc_merger "$@"
        ;;
    doc-splitter.py)
        _doc_splitter "$@"
        ;;
    dms-admin.py)
        _dms_admin "$@"
        ;;
    enterprise-admin.py)
        _enterprise_admin "$@"
        ;;
esac

# Also handle when called with python prefix
case "$words[1]" in
    *doc-comparator.py)
        _doc_comparator "$@"
        ;;
    *doc-anonymizer.py)
        _doc_anonymizer "$@"
        ;;
    *doc-quality.py)
        _doc_quality "$@"
        ;;
    *doc-master.py)
        _doc_master "$@"
        ;;
    *doc-processor.py)
        _doc_processor "$@"
        ;;
    *doc-search.py)
        _doc_search "$@"
        ;;
    *doc-merger.py)
        _doc_merger "$@"
        ;;
    *doc-splitter.py)
        _doc_splitter "$@"
        ;;
    *dms-admin.py)
        _dms_admin "$@"
        ;;
    *enterprise-admin.py)
        _enterprise_admin "$@"
        ;;
esac

echo "✓ daten20 Zsh completions loaded"
