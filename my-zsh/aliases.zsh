alias ls='ls -lahG'
alias mkdir="mkdir -p"

alias pyctags='ctags && ctags -a tags `relative_pyenv_path.py`'
alias pyrun='python manage.py runserver --settings=backend.settings.dev'
alias pytest='python manage.py test --settings=backend.settings.dev'

alias heroku-logs="heroku apps --all | awk '{ if(NR>1)print \$1; }' | fzf --header='Select the app to tail the logs' | xargs heroku logs -t -a"
alias heroku-bash="heroku apps --all | awk '{ if(NR>1)print \$1; }' | fzf --header='Select the app to bash into' | xargs heroku bash -a"
alias heroku-restart="heroku apps --all | awk '{ if(NR>1)print \$1; }' | fzf --header='Select the app to restart' | xargs heroku restart -a"
alias heroku-django-shell="heroku apps --all | awk '{ if(NR>1)print \$1; }' | fzf --header='Select the app to open django shell in' | xargs heroku run python manage.py shell_plus -a"

alias latest-tags="git tag | sed '/^v/ d' | sort --version-sort -r | head"
