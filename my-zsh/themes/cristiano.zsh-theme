export VIRTUAL_ENV_DISABLE_PROMPT=YES

function pyenv_prompt_info() {
    if which pyenv > /dev/null; then eval echo " python→$(pyenv version-name)"; fi
}
function rbenv_prompt_info() {
    if which rbenv > /dev/null; then eval echo " ruby→$(rbenv version-name)"; fi
}
function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/$MODE_INDICATOR_I}"
}

local user='%n%{$reset_color%}'
local current_dir='%(5~|%-1~/…/%3~|%4~)'
local ret_status="%(?:%{$fg_bold[green]%}%T > :%{$fg_bold[red]%}%T > %s)"
local git_branch='$(git_prompt_info)'
local viindicator='$(vi_mode_prompt_info)'

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]⦿%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]⦿%}"
ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

MODE_INDICATOR="%{$fg[green]%}[N]%{$reset_color%}"
MODE_INDICATOR_I="%{$fg[green]%}[I]%{$reset_color%}"

PROMPT="${user} ✪ ${current_dir} ✪ ${git_branch}
${ret_status}%{$reset_color%}"

RPROMPT="${viindicator}"
