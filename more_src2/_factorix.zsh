#compdef factorix
# Documentation: https://github.com/MenkeTechnologies/zsh-more-completions
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/sakuro/factorix/blob/800cf51b0aed3aee6e48bdeee6fb4ea0a5e551c9/completion/_factorix.zsh
# Repository: sakuro/factorix (completion/_factorix.zsh)

# Zsh completion for factorix
# Output by: factorix completion zsh

# Helper function to get installed MOD names
_factorix_installed_mods() {
  local -a mods
  mods=(${(f)"$(factorix mod list --json 2>/dev/null | jq -r '.[].name')"})
  [[ ${#mods} -gt 0 ]] && _describe -t mods 'installed MOD' mods
}

_factorix() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  local -a confirmable_opts
  confirmable_opts=(
    '(-y --yes)'{-y,--yes}'[Skip confirmation prompts]'
  )

  _arguments -C \
    $global_opts \
    '1:command:->command' \
    '*::arg:->args'

  case $state in
    command)
      local -a commands
      commands=(
        'version:Display Factorix version'
        'man:Display the Factorix manual page'
        'launch:Launch Factorio game'
        'path:Display Factorio and Factorix paths'
        'download:Download Factorio game files'
        'blueprint:Blueprint decode/encode commands'
        'mod:MOD management commands'
        'cache:Cache management commands'
        'rcon:RCon commands'
        'completion:Generate shell completion script'
      )
      _describe -t commands 'factorix command' commands
      ;;
    args)
      case $line[1] in
        version|man)
          _arguments $global_opts
          ;;
        launch)
          _arguments \
            $global_opts \
            '(-w --wait)'{-w,--wait}'[Wait for the game to finish]' \
            '*:Factorio arguments:'
          ;;
        path)
          _arguments \
            $global_opts \
            '--json[Output in JSON format]'
          ;;
        blueprint)
          _factorix_blueprint
          ;;
        download)
          _factorix_download
          ;;
        completion)
          _factorix_completion
          ;;
        mod)
          _factorix_mod
          ;;
        cache)
          _factorix_cache
          ;;
        rcon)
          _factorix_rcon
          ;;
      esac
      ;;
  esac
}

_factorix_blueprint() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'decode:Decode a Factorio blueprint string to JSON'
        'encode:Encode JSON to a Factorio blueprint string'
      )
      _describe -t subcommands 'blueprint subcommand' subcommands
      ;;
    args)
      case $line[1] in
        decode|encode)
          _arguments \
            $global_opts \
            '(-o --output)'{-o,--output}'[Output file path]:output file:_files' \
            '1:input file:_files'
          ;;
      esac
      ;;
  esac
}

_factorix_completion() {
  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments \
    $global_opts \
    '1:shell:(zsh bash fish)'
}

_factorix_download() {
  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments \
    $global_opts \
    '(-b --build)'{-b,--build}'[Build type]:build:(alpha expansion demo headless)' \
    '(-p --platform)'{-p,--platform}'[Platform]:platform:(win64 win64-manual osx linux64)' \
    '(-c --channel)'{-c,--channel}'[Release channel]:channel:(stable experimental)' \
    '(-d --directory)'{-d,--directory}'[Download directory]:directory:_files -/' \
    '(-o --output)'{-o,--output}'[Output filename]:filename:' \
    '1:version:'
}

_factorix_mod() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  local -a confirmable_opts
  confirmable_opts=(
    '(-y --yes)'{-y,--yes}'[Skip confirmation prompts]'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'check:Check MOD dependencies'
        'list:List installed MODs'
        'show:Show MOD details from Factorio MOD Portal'
        'enable:Enable MODs'
        'disable:Disable MODs'
        'install:Install MODs from Factorio MOD Portal'
        'uninstall:Uninstall MODs'
        'update:Update MODs'
        'download:Download MODs without installing'
        'upload:Upload MOD to Factorio MOD Portal'
        'edit:Edit MOD metadata on Factorio MOD Portal'
        'search:Search MODs on Factorio MOD Portal'
        'sync:Sync MOD states from a save file'
        'changelog:MOD changelog management'
        'image:MOD image management'
        'settings:MOD settings management'
      )
      _describe -t subcommands 'mod subcommand' subcommands
      ;;
    args)
      case $line[1] in
        check)
          _arguments $global_opts
          ;;
        list)
          _arguments \
            $global_opts \
            '--enabled[Show only enabled MODs]' \
            '--disabled[Show only disabled MODs]' \
            '--errors[Show only MODs with dependency errors]' \
            '--outdated[Show only MODs with available updates]' \
            '--json[Output in JSON format]'
          ;;
        show)
          _arguments \
            $global_opts \
            '--json[Output in JSON format]' \
            '1:MOD name:'
          ;;
        enable)
          _arguments \
            $global_opts \
            $confirmable_opts \
            '*:MOD name:_factorix_installed_mods'
          ;;
        disable)
          _arguments \
            $global_opts \
            $confirmable_opts \
            '*:MOD name:_factorix_installed_mods'
          ;;
        install)
          _arguments \
            $global_opts \
            $confirmable_opts \
            '(-j --jobs)'{-j,--jobs}'[Number of parallel downloads]:jobs:' \
            '*:MOD specification:'
          ;;
        uninstall)
          _arguments \
            $global_opts \
            $confirmable_opts \
            '--all[Uninstall all MODs]' \
            '*:MOD name:_factorix_installed_mods'
          ;;
        update)
          _arguments \
            $global_opts \
            $confirmable_opts \
            '(-j --jobs)'{-j,--jobs}'[Number of parallel downloads]:jobs:' \
            '*:MOD name:_factorix_installed_mods'
          ;;
        download)
          _arguments \
            $global_opts \
            '(-d --directory)'{-d,--directory}'[Download directory]:directory:_files -/' \
            '(-j --jobs)'{-j,--jobs}'[Number of parallel downloads]:jobs:' \
            '(-r --recursive)'{-r,--recursive}'[Include required dependencies recursively]' \
            '*:MOD specification:'
          ;;
        upload)
          _arguments \
            $global_opts \
            '--description[Markdown description]:description:' \
            '--category[MOD category]:category:(content overhaul tweaks utilities scenarios mod-packs localizations internal no-category)' \
            '--license[License identifier]:license:(default_mit default_gnugplv3 default_gnulgplv3 default_mozilla2 default_apache2 default_unlicense)' \
            '--source-url[Repository URL]:url:' \
            '1:MOD zip file:_files -g "*.zip"'
          ;;
        edit)
          _arguments \
            $global_opts \
            '--description[Markdown description]:description:' \
            '--summary[Brief description]:summary:' \
            '--title[MOD title]:title:' \
            '--category[MOD category]:category:(content overhaul tweaks utilities scenarios mod-packs localizations internal no-category)' \
            '--tags[Tags]: :_values -s , tag transportation logistics trains combat armor enemies character environment planets mining fluids logistic-network circuit-network manufacturing power storage blueprints cheats' \
            '--license[License identifier]:license:(default_mit default_gnugplv3 default_gnulgplv3 default_mozilla2 default_apache2 default_unlicense)' \
            '--homepage[Homepage URL]:url:' \
            '--source-url[Repository URL]:url:' \
            '--faq[FAQ text]:faq:' \
            '--deprecated[Deprecation flag]' \
            '--no-deprecated[Clear deprecation flag]' \
            '1:MOD name:'
          ;;
        search)
          _arguments \
            $global_opts \
            '--hide-deprecated[Hide deprecated MODs]' \
            '--no-hide-deprecated[Show deprecated MODs]' \
            '--page[Page number]:page:' \
            '--page-size[Results per page]:size:' \
            '--sort[Sort field]:sort:(name created_at updated_at)' \
            '--sort-order[Sort order]:order:(asc desc)' \
            '--version[Filter by Factorio version]:version:' \
            '--json[Output in JSON format]' \
            '*:MOD name:'
          ;;
        sync)
          _arguments \
            $global_opts \
            $confirmable_opts \
            '(-j --jobs)'{-j,--jobs}'[Number of parallel downloads]:jobs:' \
            '--keep-unlisted[Keep MODs not listed in save file enabled]' \
            '--strict-version[Install exact MOD versions from save file]' \
            '1:save file:_files -g "*.zip"'
          ;;
        changelog)
          _factorix_mod_changelog
          ;;
        image)
          _factorix_mod_image
          ;;
        settings)
          _factorix_mod_settings
          ;;
      esac
      ;;
  esac
}

_factorix_mod_changelog() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'add:Add an entry to MOD changelog'
        'check:Validate MOD changelog structure'
        'extract:Extract a changelog section for a specific version'
        'release:Release Unreleased changelog section with a version'
      )
      _describe -t subcommands 'changelog subcommand' subcommands
      ;;
    args)
      case $line[1] in
        add)
          _arguments \
            $global_opts \
            '--version[Version (X.Y.Z or Unreleased)]:version:(Unreleased)' \
            '--category[Category name]:category:(Major\ Features Features Minor\ Features Graphics Sounds Optimizations Balancing Combat\ Balancing Circuit\ Network Changes Bugfixes Modding Scripting Gui Control Translation Debug Ease\ of\ use Info Locale Compatibility)' \
            '--changelog[Path to changelog file]:changelog file:_files' \
            '*:entry text:'
          ;;
        check)
          _arguments \
            $global_opts \
            '--release[Disallow Unreleased section]' \
            '--changelog[Path to changelog file]:changelog file:_files' \
            '--info-json[Path to info.json file]:info.json file:_files'
          ;;
        extract)
          _arguments \
            $global_opts \
            '--version[Version (X.Y.Z or Unreleased)]:version:(Unreleased)' \
            '--json[Output in JSON format]' \
            '--changelog[Path to changelog file]:changelog file:_files'
          ;;
        release)
          _arguments \
            $global_opts \
            '--version[Version (X.Y.Z)]:version:' \
            '--date[Release date (YYYY-MM-DD)]:date:' \
            '--changelog[Path to changelog file]:changelog file:_files' \
            '--info-json[Path to info.json file]:info.json file:_files'
          ;;
      esac
      ;;
  esac
}

_factorix_mod_image() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'list:List MOD images'
        'add:Add an image to a MOD'
        'edit:Edit MOD images'
      )
      _describe -t subcommands 'image subcommand' subcommands
      ;;
    args)
      case $line[1] in
        list)
          _arguments \
            $global_opts \
            '1:MOD name:'
          ;;
        add)
          _arguments \
            $global_opts \
            '1:MOD name:' \
            '2:image file:_files -g "*.png *.jpg *.jpeg *.gif"'
          ;;
        edit)
          _arguments \
            $global_opts \
            '1:MOD name:'
          ;;
      esac
      ;;
  esac
}

_factorix_mod_settings() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'dump:Dump MOD settings to JSON'
        'restore:Restore MOD settings from JSON'
      )
      _describe -t subcommands 'settings subcommand' subcommands
      ;;
    args)
      case $line[1] in
        dump|restore)
          _arguments $global_opts
          ;;
      esac
      ;;
  esac
}

_factorix_rcon() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  local -a rcon_opts
  rcon_opts=(
    '--host[RCon host]:host:'
    '--port[RCon port]:port:'
    '--password[RCon password]:password:'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'exec:Execute a Factorio console command'
        'eval:Evaluate a Lua script'
      )
      _describe -t subcommands 'rcon subcommand' subcommands
      ;;
    args)
      case $line[1] in
        exec)
          _arguments \
            $global_opts \
            $rcon_opts \
            '1:console command:'
          ;;
        eval)
          _arguments \
            $global_opts \
            $rcon_opts \
            '1:Lua script:'
          ;;
      esac
      ;;
  esac
}

_factorix_cache() {
  local context state state_descr line
  typeset -A opt_args

  local -a global_opts
  global_opts=(
    '(-c --config-path)'{-c,--config-path}'[Path to configuration file]:config file:_files'
    '--log-level[Set log level]:level:(debug info warn error fatal)'
    '(-q --quiet)'{-q,--quiet}'[Suppress non-essential output]'
  )

  _arguments -C \
    '1:subcommand:->subcommand' \
    '*::arg:->args'

  case $state in
    subcommand)
      local -a subcommands
      subcommands=(
        'stat:Display cache statistics'
        'evict:Evict cache entries'
      )
      _describe -t subcommands 'cache subcommand' subcommands
      ;;
    args)
      case $line[1] in
        stat)
          _arguments \
            $global_opts \
            '--json[Output in JSON format]'
          ;;
        evict)
          _arguments \
            $global_opts \
            '--all[Remove all entries]' \
            '--expired[Remove expired entries only]' \
            '--older-than[Remove entries older than AGE]:age:' \
            '*:cache name:(download api info_json)'
          ;;
      esac
      ;;
  esac
}

# Register the completion function
