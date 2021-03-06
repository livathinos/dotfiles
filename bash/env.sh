set backup
set backupdir='~/.vim/tmp'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

MYSQL=/usr/local/mysql/bin
GBRT=~/bin

# Setup rbenv shims
export PATH=~/.rbenv/shims:$PATH

export PATH=/usr/local/share/npm/bin/:$PATH

export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export PATH=$PATH:$GBRT

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export ACKRC=".ackrc"
export BUNDLER_EDITOR=vim
export DOCKER_HOST=tcp://192.168.42.45:2375
export AIRFLOW_HOME="~/airflow"

eval "$(fasd --init auto)"

# Set vim as the edit-and-execute-command editor
set -o vi
