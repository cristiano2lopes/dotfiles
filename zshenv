export EDITOR="vim"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ANDROID_HOME=/Users/Cristiano/Library/Android/sdk

export BEPRETTY_HEROKU_DOMAIN="heroku.bepretty"

#Path
OLD_PATH=$PATH
pathdirstoadd=(
    /usr/local/heroku/bin
    /usr/local/bin
    /usr/local/sbin
    /usr/local/opt/mongodb-community@3.6/bin
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

source ~/.fzf.zsh
source ~/.my_zsh/aliases.zsh
source ~/.my_zsh/projects.zsh

export ERL_AFLAGS="-kernel shell_history enabled"

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_DEFAULT_OPTS='-m --height 50% --border'
export FZF_ALT_C_COMMAND='find . -maxdepth 1 -type d'

source /usr/local/opt/asdf/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh
