alias diffb="git difftool -d origin/master...HEAD &"
alias diffh="git difftool -d origin/stable...HEAD &"
alias diffw="git difftool -d &"

# This one depends on pick, which is not installed by general-setup.sh
alias co="if [ ! -z `git status -s` ]; then echo 'commit or stash local changes first!'; else git checkout master && git pull && git branch -a | sed -e 's/remotes\/origin\///'| pick | xargs git checkout; fi"

alias ss="rake dev:kill_db_connections && foreman start"
