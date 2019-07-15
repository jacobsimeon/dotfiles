# load completion functions from home-brew installed zsh
fpath=(/usr/local/share/zsh/site-functions $fpath)

# load completion functions from ~/.zsh/completion
fpath=(~/.zsh/completion $fpath)

# Enable tab-completion
autoload -Uz compinit
compinit
