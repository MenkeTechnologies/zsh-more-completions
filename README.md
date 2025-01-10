# More Zsh Completion Functions

This plugins adds zsh completions (compsys) for ~13.6k commands.
Most were generated by python scripts that parsed --help output and man page output.
As such they are of varying quality.
Architecture prefixed completions are in the `architecture_src` directory.

## Install for Zinit
> `~/.zshrc`
```sh
source "$HOME/.zinit/bin/zinit.zsh"
zinit ice lucid nocompile wait'0e' nocompletions
zinit load MenkeTechnologies/zsh-more-completions
```
It is recommended to have zinit not symlink all the completions into `~/.zinit/completions` but to allow the plugin to append and prepend to fpath.  This is to have zsh-more-completions have certain completions override others but not override system completions which by default with zinit come after `~/.zinit/completions` in fpath.
The ice `nocompletions` achieves this as the plugin is still sourced and fpath is set to find the completions.

## Install for Oh My Zsh

```sh
cd "$HOME/.oh-my-zsh/custom/plugins" && git clone https://github.com/MenkeTechnologies/zsh-more-completions.git
```

Add `zsh-more-completions` to plugins array in ~/.zshrc

For the plugin completions to take effect, compinit must be run after adding the source dirs to fpath.
With OMZ this requires a second and slow compinit because OMZ only adds plugin root directory to fpath.
To avoid this add the source dirs inside the plugin to fpath before sourcing OMZ and it running compinit.

Here is how I did it in my `.zshrc`.

```sh
# OMZ does not add nested comp dirs to fpath so do it here, assume *src has completions
for plug in ${plugins[@]}; do
    if [[ -d "$ZSH/custom/plugins/$plug" ]]; then
        # null glob - no error
        for dir in "$ZSH/custom/plugins/$plug/"*src(N); do
            if [[ -d "$dir" ]]; then
                if [[ -z ${fpath[(r)$dir]} ]];then
                    if [[ $dir = *override* ]]; then
                        fpath=($dir $fpath)
                    else
                        fpath=($fpath $dir)
                    fi
                    # echo "add $dir to $fpath" >> "$ZPWR_LOGFILE"
                fi
            fi
        done
    fi
done
```

## General Install

```sh
git clone https://github.com/MenkeTechnologies/zsh-more-completions.git
```

copy all _ files in source directories to somewhere in fpath

## Usage
Run  `autoload -Uz compinit` and then `compinit` to generate the `~/.zcompdump` file after install.
Make sure to use the `~/.zcompdump` file as a cache when invoking compinit like `compinit -C` in your `~/.zshrc`.
This will reduce interactive shell startup time dramatically.
