#compdef changelogger
# Source: https://github.com/KDesp73/changelogger/blob/5861d8a1b5fb79a1f08a6834200c52ede3757423/docs/_changelogger.zsh
# Repository: KDesp73/changelogger (docs/_changelogger.zsh)

_changelogger_cmd_0 () {
    _path_files
}

_changelogger () {
    local -a literals=("-s" "--yank" "major" "--commits" "export" "init" "--all" "add" "json" "-h" "-s" "fixed" "changed" "false" "-s" "minor" "--push" "-U" "-F" "--title" "push" "removed" "added" "delete" "patch" "-V" "--always-export" "get" "remote" "config" "export" "yaml" "markdown" "--file" "security" "json" "true" "major" "--version-full" "removed" "--unyank" "--yes" "-C" "markdown" "-y" "-V" "--help" "edit" "yml" "update" "--version" "--format" "-A" "deprecated" "--remote-repo" "yaml" "-f" "-V" "--help" "set" "editor" "added" "--status" "fixed" "--config-dir" "-V" "--editor" "minor" "--p" "-B" "changed" "patch" "--releases" "config" "version" "security" "--asset" "autocomplete" "-Y" "-A" "md" "list" "-r" "--always-push" "release" "man" "--yes" "push" "-t" "deprecated" "yml" "md" "generate" "-N" "-A" "--new" "import" "-v")

    local -A descriptions
    descriptions[1]="Specify the status of the entry (default is 'added')"
    descriptions[5]="Always export CHANGELOG.md"
    descriptions[6]="Initializes the changelog"
    descriptions[8]="Adds an entry"
    descriptions[10]="Prints the help message"
    descriptions[11]="Set the status to filter the list"
    descriptions[15]="Specify new status"
    descriptions[17]="Push the release on github"
    descriptions[18]="Set a release as not YANKED"
    descriptions[19]="Specify in which format to export"
    descriptions[21]="Always push the release on Github"
    descriptions[24]="Delete any of the unreleased entries"
    descriptions[26]="Specify new version"
    descriptions[27]="Specify whether to export the CHANGELOG.md file"
    descriptions[28]="Returns a variable"
    descriptions[29]="The remote git repo url"
    descriptions[30]="The path to the configuration file"
    descriptions[31]="Exports the CHANGELOG.md file"
    descriptions[43]="Add unreleased commit messages"
    descriptions[45]="Skip the confirmation message"
    descriptions[46]="Set the version of the project"
    descriptions[48]="Edit any of the unreleased entries"
    descriptions[50]="Update changelogger to the latest version"
    descriptions[53]="List all entries and have them available for deletion"
    descriptions[55]="Specify the url of the remote repo"
    descriptions[57]="File to import"
    descriptions[58]="Set the version to filter the list"
    descriptions[60]="Sets a variable"
    descriptions[61]="Editor to use when editing a file is needed"
    descriptions[65]="Specify the configuration file path"
    descriptions[66]="Specify the version of the release you want to push"
    descriptions[67]="Specify the editor to use"
    descriptions[70]="Include an asset in the release"
    descriptions[74]="A starting point for your config file (~/.config/.changelogger.yml)"
    descriptions[75]="Latest release"
    descriptions[78]="Autocomplete for the active shell"
    descriptions[79]="Set a release as YANKED"
    descriptions[80]="List all entries and have them available for editing"
    descriptions[82]="Lists entries"
    descriptions[83]="List only the releases"
    descriptions[84]="Specify whether to immediately push the release"
    descriptions[85]="Creates a new release"
    descriptions[86]="Man page for changelogger"
    descriptions[88]="Push an unpushed release to Github"
    descriptions[89]="Specify new title/message"
    descriptions[93]="Generate various files"
    descriptions[95]="Print all variables"
    descriptions[96]="Creates a new release"
    descriptions[97]="Import CHANGELOG.md file into the database"
    descriptions[98]="Prints the project version"

    local -A literal_transitions
    literal_transitions[1]="([59]=2 [48]=3 [24]=4 [6]=2 [28]=5 [82]=6 [85]=7 [8]=8 [51]=2 [31]=9 [50]=10 [60]=11 [88]=12 [10]=2 [93]=13 [97]=14 [98]=2)"
    literal_transitions[3]="([10]=23 [20]=17 [63]=19 [89]=17 [39]=18 [80]=2 [7]=2 [15]=20 [26]=18)"
    literal_transitions[4]="([10]=23 [7]=2 [53]=2)"
    literal_transitions[5]="([59]=2 [61]=2 [75]=2 [10]=2 [21]=2 [5]=2 [7]=2 [30]=2 [29]=2 [95]=2)"
    literal_transitions[6]="([59]=2 [58]=18 [10]=2 [63]=19 [11]=20 [39]=18 [83]=2 [73]=2)"
    literal_transitions[7]="([59]=2 [2]=18 [77]=22 [94]=28 [10]=2 [79]=18 [17]=2 [41]=18 [18]=18 [69]=2 [96]=15 [70]=22 [45]=21)"
    literal_transitions[8]="([59]=2 [1]=20 [4]=2 [10]=2 [43]=2 [63]=19)"
    literal_transitions[9]="([59]=2 [19]=24 [10]=2 [52]=16)"
    literal_transitions[10]="([10]=2 [59]=2)"
    literal_transitions[11]="([59]=2 [10]=2 [65]=22 [39]=18 [67]=27 [27]=25 [55]=26 [84]=25 [46]=18)"
    literal_transitions[12]="([59]=2 [77]=22 [66]=18 [10]=2 [87]=2 [39]=18 [70]=22 [45]=2)"
    literal_transitions[13]="([59]=2 [74]=2 [78]=2 [10]=2 [86]=2)"
    literal_transitions[14]="([59]=2 [10]=2 [34]=22 [57]=22)"
    literal_transitions[15]="([68]=2 [72]=2 [38]=2)"
    literal_transitions[16]="([91]=2 [36]=2 [92]=2 [44]=2 [56]=2)"
    literal_transitions[19]="([40]=2 [62]=2 [76]=2 [64]=2 [90]=2 [71]=2)"
    literal_transitions[20]="([64]=2 [90]=2 [76]=2 [62]=2 [40]=2 [71]=2)"
    literal_transitions[21]="([87]=2)"
    literal_transitions[23]="([59]=2)"
    literal_transitions[24]="([56]=2 [92]=2 [44]=2 [36]=2 [91]=2)"
    literal_transitions[25]="([37]=2 [14]=2)"
    literal_transitions[28]="([38]=2 [68]=2 [72]=2)"

    local -A match_anything_transitions
    match_anything_transitions=([18]=2 [17]=2 [22]=2 [27]=2 [26]=2)

    declare -A subword_transitions

    local state=1
    local word_index=2
    while [[ $word_index -lt $CURRENT ]]; do
        if [[ -v "literal_transitions[$state]" ]]; then
            local -A state_transitions
            eval "state_transitions=${literal_transitions[$state]}"

            local word=${words[$word_index]}
            local word_matched=0
            for ((literal_id = 1; literal_id <= $#literals; literal_id++)); do
                if [[ ${literals[$literal_id]} = "$word" ]]; then
                    if [[ -v "state_transitions[$literal_id]" ]]; then
                        state=${state_transitions[$literal_id]}
                        word_index=$((word_index + 1))
                        word_matched=1
                        break
                    fi
                fi
            done
            if [[ $word_matched -ne 0 ]]; then
                continue
            fi
        fi

        if [[ -v "match_anything_transitions[$state]" ]]; then
            state=${match_anything_transitions[$state]}
            word_index=$((word_index + 1))
            continue
        fi

        return 1
    done
    declare -A literal_transitions_level_0=([25]="37 14" [20]="64 90 76 62 40 71" [1]="48 24 6 28 82 85 8 31 50 60 88 10 93 97 98" [21]="87" [11]="10 65 67 27 55 84 46" [6]="58 10 11 83" [7]="10 79 17 18 96 70 45" [10]="10" [4]="10 53" [9]="19 10" [15]="68 72 38" [13]="74 78 10 86" [8]="1 10 43" [12]="66 10 70 45" [3]="10 89 80 15 26" [14]="10 57" [5]="61 75 10 21 5 30 29 95" [23]="59" [24]="56 92 44 36 91")
    declare -A literal_transitions_level_1=([1]="59 51" [11]="59 39" [16]="91 36 92 44 56" [6]="59 63 39 73" [7]="59 2 77 94 41 69" [10]="59" [4]="7" [9]="59 52" [3]="20 63 39 7" [19]="40 62 76 64 90 71" [13]="59" [12]="59 77 87 39" [8]="59 4 63" [14]="59 34" [5]="59 7" [28]="38 68 72")
    declare -A subword_transitions_level_0=()
    declare -A subword_transitions_level_1=()
    declare -A commands_level_0=()
    declare -A commands_level_1=()
    declare -A specialized_commands_level_0=([22]="0")
    declare -A specialized_commands_level_1=()

     local max_fallback_level=1
     for (( fallback_level=0; fallback_level <= max_fallback_level; fallback_level++ )) {
         completions_no_description_trailing_space=()
         completions_no_description_no_trailing_space=()
         completions_trailing_space=()
         suffixes_trailing_space=()
         descriptions_trailing_space=()
         completions_no_trailing_space=()
         suffixes_no_trailing_space=()
         descriptions_no_trailing_space=()
         matches=()

         declare literal_transitions_name=literal_transitions_level_${fallback_level}
         eval "declare initializer=\${${literal_transitions_name}[$state]}"
         eval "declare -a transitions=($initializer)"
         for literal_id in "${transitions[@]}"; do
             if [[ -v "descriptions[$literal_id]" ]]; then
                 completions_trailing_space+=("${literals[$literal_id]}")
                 suffixes_trailing_space+=("${literals[$literal_id]}")
                 descriptions_trailing_space+=("${descriptions[$literal_id]}")
             else
                 completions_no_description_trailing_space+=("${literals[$literal_id]}")
             fi
         done

         declare subword_transitions_name=subword_transitions_level_${fallback_level}
         eval "declare initializer=\${${subword_transitions_name}[$state]}"
         eval "declare -a transitions=($initializer)"
         for subword_id in "${transitions[@]}"; do
             _changelogger_subword_${subword_id} complete "${words[$CURRENT]}"
             completions_no_description_trailing_space+=("${subword_completions_no_description_trailing_space[@]}")
             completions_trailing_space+=("${subword_completions_trailing_space[@]}")
             completions_no_trailing_space+=("${subword_completions_no_trailing_space[@]}")
             suffixes_no_trailing_space+=("${subword_suffixes_no_trailing_space[@]}")
             suffixes_trailing_space+=("${subword_suffixes_trailing_space[@]}")
             descriptions_trailing_space+=("${subword_descriptions_trailing_space[@]}")
             descriptions_no_trailing_space+=("${subword_descriptions_no_trailing_space[@]}")
         done

         declare commands_name=commands_level_${fallback_level}
         eval "declare initializer=\${${commands_name}[$state]}"
         eval "declare -a transitions=($initializer)"
         for command_id in "${transitions[@]}"; do
             local output=$(_changelogger_cmd_${command_id} "${words[$CURRENT]}")
             local -a command_completions=("${(@f)output}")
             for line in ${command_completions[@]}; do
                 local parts=(${(@s:	:)line})
                 if [[ -v "parts[2]" ]]; then
                     completions_trailing_space+=("${parts[1]}")
                     suffixes_trailing_space+=("${parts[1]}")
                     descriptions_trailing_space+=("${parts[2]}")
                 else
                     completions_no_description_trailing_space+=("${parts[1]}")
                 fi
             done
         done

         declare specialized_commands_name=specialized_commands_level_${fallback_level}
         eval "declare initializer=\${${specialized_commands_name}[$state]}"
         eval "declare -a transitions=($initializer)"
         for command_id in "${transitions[@]}"; do
             _changelogger_cmd_${command_id} ${words[$CURRENT]}
         done

         local maxlen=0
         for suffix in ${suffixes_trailing_space[@]}; do
             if [[ ${#suffix} -gt $maxlen ]]; then
                 maxlen=${#suffix}
             fi
         done
         for suffix in ${suffixes_no_trailing_space[@]}; do
             if [[ ${#suffix} -gt $maxlen ]]; then
                 maxlen=${#suffix}
             fi
         done

         for ((i = 1; i <= $#suffixes_trailing_space; i++)); do
             if [[ -z ${descriptions_trailing_space[$i]} ]]; then
                 descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}}"
             else
                 descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}} -- ${descriptions_trailing_space[$i]}"
             fi
         done

         for ((i = 1; i <= $#suffixes_no_trailing_space; i++)); do
             if [[ -z ${descriptions_no_trailing_space[$i]} ]]; then
                 descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}}"
             else
                 descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}} -- ${descriptions_no_trailing_space[$i]}"
             fi
         done

         compadd -O m -a completions_no_description_trailing_space; matches+=("${m[@]}")
         compadd -O m -a completions_no_description_no_trailing_space; matches+=("${m[@]}")
         compadd -O m -a completions_trailing_space; matches+=("${m[@]}")
         compadd -O m -a completions_no_trailing_space; matches+=("${m[@]}")

         if [[ ${#matches} -gt 0 ]]; then
             compadd -Q -a completions_no_description_trailing_space
             compadd -Q -S ' ' -a completions_no_description_no_trailing_space
             compadd -l -Q -a -d descriptions_trailing_space completions_trailing_space
             compadd -l -Q -S '' -a -d descriptions_no_trailing_space completions_no_trailing_space
             return 0
         fi
     }
}

if [[ $ZSH_EVAL_CONTEXT =~ :file$ ]]; then
    compdef _changelogger changelogger
else
    _changelogger
fi
