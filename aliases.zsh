alias diffb="git difftool -d origin/master...HEAD &"
alias diffw="git difftool -d &"

# This one depends on pick, which is not installed by general-setup.sh
alias co="git branch -a --no-merged master | sed -e 's/remotes\/origin\///' | sort | uniq | pick | xargs git checkout"
alias gb="git checkout -b"
alias gbd="git branch -d"
alias gpu="git rev-parse --abbrev-ref HEAD | xargs git push -u origin"
alias update="git pull && bundle install && rake db:migrate && rake db:migrate RAILS_ENV=test && rake dev:frontend"
alias mm="git co master && git pull && git co - && git merge master"

alias ss="rake dev:kill_db_connections && foreman start -f Procfile.dev"
