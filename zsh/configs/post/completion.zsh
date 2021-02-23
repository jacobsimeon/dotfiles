# load ours and homebrew's completion functions
fpath=(~/.zsh/completion /opt/homebrew/share/zsh/site-functions $fpath)

autoload -U compinit
compinit
