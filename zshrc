if [ "$(uname -p)" = "i386" ]; then
  echo "Running in i386 mode (Rosetta)"
  eval "$(/usr/local/homebrew/bin/brew shellenv)"
  alias brew='/usr/local/homebrew/bin/brew'
else
  echo "Running in ARM mode (M1)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  alias brew='/opt/homebrew/bin/brew'
fi

# path

OLD_PATH=$PATH
pathdirstoadd=(
    $HOMEBREW_PREFIX/heroku/bin
    $HOMEBREW_PREFIX/bin
    $HOMEBREW_PREFIX/sbin
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
export MANPATH="$HOMEBREW_PREFIX/man:$MANPATH"

FPATH=$HOMEBREW_PREFIX/share/zsh/site-functions:$FPATH

# oh-my-zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_CUSTOM=~/.my_zsh
ZSH_THEME="punctual"
plugins=(git docker gpg-agent vi-mode heroku)

source $ZSH/oh-my-zsh.sh

# zsh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"

# syntax 

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pipx 

eval "$(register-python-argcomplete pipx)"

# android

export ANDROID_HOME=/Users/Cristiano/Library/Android/sdk

# elixir

export ERL_AFLAGS="-kernel shell_history enabled"

# asdf

source $HOMEBREW_PREFIX/opt/asdf/asdf.sh
source ~/.asdf/plugins/java/set-java-home.zsh

# fzf

export FZF_DEFAULT_OPTS='-m'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
