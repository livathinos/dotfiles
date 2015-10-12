### General usage aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias copyimg=copy_img
alias be='bundle exec'
alias rc='rails console'
alias gs="git status -sb"
alias extract="!~/dotfiles/bin/extract"
alias pr_stats="ruby ~/dotfiles/bin/pr_stats.rb"

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
