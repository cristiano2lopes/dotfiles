export EDITOR="vim"
export BEPRETTY_HEROKU_DOMAIN="heroku.bepretty"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ANDROID_HOME=/Users/Cristiano/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

#Path
OLD_PATH=$PATH
pathdirstoadd=(
    /usr/local/heroku/bin
    /usr/local/bin
    /usr/local/sbin
    /Applications/Postgres.app/Contents/Versions/latest/bin
    $ANDROID_HOME/platform-tools
    $ANDROID_HOME/emulator
    $ANDROID_HOME/tools
    $ANDROID_HOME/tools/bin
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

#Gcloud
if [ -f '/Users/Cristiano/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/Cristiano/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/Cristiano/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/Cristiano/google-cloud-sdk/completion.zsh.inc'; fi
