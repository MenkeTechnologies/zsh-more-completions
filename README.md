# More Zsh Completion Functions

This plugins adds zsh completions (compsys) for ~10k commands.
Most were generated by python scripts that parsed --help output and man page output.
As such they are of varying quality.


## Install for Oh My Zsh

```sh
cd "$HOME/.oh-my-zsh/custom/plugins" && git clone https://github.com/MenkeTechnologies/zsh-more-completions.git
```

Add `zsh-more-completions` to plugins array in ~/.zshrc

## General Install

```sh
git clone https://github.com/MenkeTechnologies/zsh-more-completions.git
```

copy all _ files in src directory to somewhere in fpath

## Usage
Run  `autoload -Uz compinit` and then `compinit` to generate the .zcompdump file after install.
Make sure to use the .zcompdump cache when invoking compinit like `compinit -C` in your .zshrc.
This will reduce interactive shell startup time dramatically.

