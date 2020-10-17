alias ls='ls -lahG'
alias mkdir="mkdir -p"
alias prj='cd ~/Documents/projects/'

alias heroku-logs="heroku apps --all | awk '{ if(NR>1)print \$1; }' | fzf --header='Select the app to tail the logs' | xargs heroku logs -t -a"
alias heroku-bash="heroku apps --all | awk '{ if(NR>1)print \$1; }' | fzf --header='Select the app to bash into' | xargs heroku bash -a"
alias latest-tags="git tag | sed '/^v/ d' | sort --version-sort -r | head"
