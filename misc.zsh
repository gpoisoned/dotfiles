ulimit -S -n 16384
export PATH=$PATH:/Users/josh/Dev/anaconda3/bin

function set_env() {
  if [ -f .env ]; then source <(cat .env | sed -nE "s/^(.*)$/export \1/p"); fi
}
chpwd_functions=(${chpwd_functions[@]} "set_env")
