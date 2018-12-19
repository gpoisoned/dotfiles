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

alias pushlooker="echo staging demo production | xargs -n1 -I {} rails looker:git:push_lookml LOOKER_ENV_OVERRIDE={} LOOKER_DB_ENV_OVERRIDE={} AUTO_LOOKML_GENERATION=true LOOKER_USE_SNOWFLAKE=true"

function use_es5() {
  export IS_USING_ES_5=true
  brew services stop elasticsearch@2.4
  brew services stop kibana@4.4
  docker-compose -f docker-compose.buildkite.yml up -d elasticsearch5 kibana5
}

function use_es2() {
  export IS_USING_ES_5=false
  docker-compose -f docker-compose.buildkite.yml stop
  brew services restart elasticsearch@2.4
  brew services restart kibana@4.4
}
