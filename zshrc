source $HOME/.zshenv

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"
