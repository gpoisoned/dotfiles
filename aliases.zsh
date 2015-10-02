alias diffb="git difftool -d origin/master...HEAD &"
alias diffh="git difftool -d origin/stable...HEAD &"
alias diffw="git difftool -d &"

# This one depends on pick, which is not installed by general-setup.sh
alias co="git branch -a | sed -e 's/remotes\/origin\///'| pick | xargs git checkout"
