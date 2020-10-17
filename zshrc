# path

OLD_PATH=$PATH
pathdirstoadd=(
    /usr/local/heroku/bin
    /usr/local/bin
    /usr/local/sbin
    /usr/local/opt/mongodb-community@3.6/bin
    /usr/local/Cellar/libpq/13.0/bin
    $ANDROID_HOME/platform-tools
    $ANDROID_HOME/emulator
    $ANDROID_HOME/tools
    $ANDROID_HOME/tools/bin
    $HOME/Documents/projects/personal/scripts
    /Users/Cristiano/.local/bin
)
for dir in $pathdirstoadd; do
    if [ -d $dir ]; then
        PATH_TO_PREPEND+=$dir:;
    fi
done

export PATH=$PATH_TO_PREPEND$OLD_PATH
export MANPATH="/usr/local/man:$MANPATH"

FPATH=/usr/local/share/zsh/site-functions:$FPATH

# oh-my-zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_CUSTOM=~/.my_zsh
ZSH_THEME="punctual"
plugins=(direnv git docker docker-compose fzf gpg-agent heroku httpie vi-mode)

source $ZSH/oh-my-zsh.sh

# zsh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"

# syntax 

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pipx 

eval "$(register-python-argcomplete pipx)"

# android

export ANDROID_HOME=/Users/Cristiano/Library/Android/sdk

# elixir

export ERL_AFLAGS="-kernel shell_history enabled"

# asdf

source /usr/local/opt/asdf/asdf.sh
source ~/.asdf/plugins/java/set-java-home.zsh

# fzf

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_DEFAULT_OPTS='-m --height 40% --border'
export FZF_ALT_C_COMMAND='find . -maxdepth 1 -type d'

