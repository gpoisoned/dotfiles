alias diffb="git difftool -d origin/master...HEAD &"
alias diffh="git difftool -d origin/stable...HEAD &"
alias diffw="git difftool -d &"

# This one depends on pick, which is not installed by general-setup.sh
alias co="git remote update --prune && git branch --no-merged master | sed -e 's/remotes\/origin\///'| pick | xargs git checkout"

alias ss="rake dev:kill_db_connections && foreman start"
