ZSH_CUSTOM=$HOME/.my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=cristiano
plugins=(
    git
    python
    heroku
    httpie
    redis-cli
    vi-mode
    zsh-syntax-highlighting
    fzf
)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

bindkey "^R" history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/opt/asdf/asdf.sh

export FZF_BASE="/usr/local/bin/fzf"
export FZF_CTRL_T_COMMAND="fd --hidden --follow --exclude \".git\" . $HOME"
export FZF_ALT_C_COMMAND="fd -t d --hidden --follow --exclude \".git\" . $HOME"

eval "$(direnv hook zsh)"
