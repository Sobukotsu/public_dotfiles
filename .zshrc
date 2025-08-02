### Settings ###
## Complement ##
zstyle :compinstall filename '/home/user/.zshrc'
autoload -Uz compinit
compinit

## History ##
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e


## Extra ##
# Starship #
if type starship > /dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

