set backup
set backupdir='~/.vim/tmp'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

MYSQL=/usr/local/mysql/bin
GBRT=~/bin

export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export PATH=$PATH:$GBRT

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export ACKRC=".ackrc"
export BUNDLER_EDITOR=vim
export DOCKER_HOST=tcp://192.168.42.45:2375
export RBENV_ROOT=/Users/spyroslivathinos/.rbenv

rbenv shell 2.1.5
