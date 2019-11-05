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
)
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

bindkey "^R" history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/opt/asdf/asdf.sh

