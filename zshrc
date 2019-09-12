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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Cristiano/Documents/projects/bepretty/bepretty-backend/devops/exec -l /usr/local/bin/zsh/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/Cristiano/Documents/projects/bepretty/bepretty-backend/devops/exec -l /usr/local/bin/zsh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Cristiano/Documents/projects/bepretty/bepretty-backend/devops/exec -l /usr/local/bin/zsh/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/Cristiano/Documents/projects/bepretty/bepretty-backend/devops/exec -l /usr/local/bin/zsh/google-cloud-sdk/completion.zsh.inc'; fi
