export EDITOR="nvim"
export BEPRETTY_HEROKU_DOMAIN="heroku.bepretty"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ANDROID_HOME=/Users/Cristiano/Library/Android/sdk

#Path
OLD_PATH=$PATH
pathdirstoadd=(
    /Applications/Postgres.app/Contents/Versions/latest/bin
    /usr/local/heroku/bin
    /usr/local/bin
    /usr/local/sbin
    /Users/Cristiano/Library/Android/sdk/platform-tools
    $HOME/Documents/projects/personal/scripts
)
for dir in $pathdirstoadd; do
    if [ -d $dir ]; then
        PATH_TO_PREPEND+=$dir:;
    fi
done

export PATH=$PATH_TO_PREPEND$OLD_PATH

#Elixir
export ERL_AFLAGS="-kernel shell_history enabled"


