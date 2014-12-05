# bpl() {

    # Unicode symbols
    # PS_SYMBOL_DARWIN=''
    # PS_SYMBOL_LINUX='$'
    # PS_SYMBOL_OTHER='%'
    # GIT_BRANCH_SYMBOL='⑂ '
    GIT_BRANCH_SYMBOL='⭠ '
    GIT_BRANCH_CHANGED_SYMBOL='+'
    GIT_NEED_PUSH_SYMBOL='⇡'
    GIT_NEED_PULL_SYMBOL='⇣'

    _SEG_SEP='⮀'


    # Solarized colorscheme
    FG_BASE03="\[$(tput setaf 8)\]" # Background color
    FG_BASE02="\[$(tput setaf 0)\]"
    FG_BASE01="\[$(tput setaf 10)\]"
    FG_BASE00="\[$(tput setaf 11)\]"
    FG_BASE0="\[$(tput setaf 12)\]" # Foreground color
    FG_BASE1="\[$(tput setaf 14)\]"
    FG_BASE2="\[$(tput setaf 7)\]"
    FG_BASE3="\[$(tput setaf 15)\]" 

    BG_BASE03="\[$(tput setab 8)\]" # Background color
    BG_BASE02="\[$(tput setab 0)\]"
    BG_BASE01="\[$(tput setab 10)\]"
    BG_BASE00="\[$(tput setab 11)\]"
    BG_BASE0="\[$(tput setab 12)\]"
    BG_BASE1="\[$(tput setab 14)\]"
    BG_BASE2="\[$(tput setab 7)\]"
    BG_BASE3="\[$(tput setab 15)\]"

    FG_YELLOW="\[$(tput setaf 3)\]"
    FG_ORANGE="\[$(tput setaf 9)\]"
    FG_RED="\[$(tput setaf 1)\]"
    FG_MAGENTA="\[$(tput setaf 5)\]"
    FG_VIOLET="\[$(tput setaf 13)\]"
    FG_BLUE="\[$(tput setaf 4)\]"
    FG_CYAN="\[$(tput setaf 6)\]"
    FG_GREEN="\[$(tput setaf 2)\]"

    BG_YELLOW="\[$(tput setab 3)\]"
    BG_ORANGE="\[$(tput setab 9)\]"
    BG_RED="\[$(tput setab 1)\]"
    BG_MAGENTA="\[$(tput setab 5)\]"
    BG_VIOLET="\[$(tput setab 13)\]"
    BG_BLUE="\[$(tput setab 4)\]"
    BG_CYAN="\[$(tput setab 6)\]"
    BG_GREEN="\[$(tput setab 2)\]"

    DIM="\[$(tput dim)\]"
    REVERSE="\[$(tput rev)\]"
    RESET="\[$(tput sgr0)\]"
    BOLD="\[$(tput bold)\]"

    gitStatus() { 
        [ -z "$(which git)" ] && return    # no git command found

        # try to get current branch or SHA1 hash for detached head
        local branch="$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)"
        if [ -z "$branch" ]; then
            printf "$FG_BLUE$BG_BASE03${_SEG_SEP}$RESET"
            return  # not a git branch
        fi

        local marks
        local seg
        # branch is modified
        [ -n "$(git status --porcelain)" ] && marks+="$GIT_BRANCH_CHANGED_SYMBOL"

        # check if local branch is ahead/behind of remote and by how many commits
        # Shamelessly copied from http://stackoverflow.com/questions/2969214/git-programmatically-know-by-how-much-the-branch-is-ahead-behind-a-remote-branc
        # local remote="$(git config branch.$branch.remote)"
        # local remote_ref="$(git config branch.$branch.merge)"
        # local remote_branch="${remote_ref##refs/heads/}"
        # local tracking_branch="refs/remotes/$remote/$remote_branch"
        # if [ -n "$remote" ]; then
        #     local pushN="$(git rev-list $tracking_branch..HEAD|wc -l|tr -d ' ')"
        #     local pullN="$(git rev-list HEAD..$tracking_branch|wc -l|tr -d ' ')"
        #     [ "$pushN" != "0" ] && marks+=" $GIT_NEED_PUSH_SYMBOL$pushN"
        #     [ "$pullN" != "0" ] && marks+=" $GIT_NEED_PULL_SYMBOL$pullN"
        # fi

        # print the git branch segment without a trailing newline
        printf "$FG_BLUE$BG_MAGENTA${_SEG_SEP}$BG_MAGENTA$FG_BASE2 $GIT_BRANCH_SYMBOL$branch$marks $FG_MAGENTA$BG_BASE03$_SEG_SEP$RESET"
    }

    promptStatus() {
        local RETVAL=$2
        local symbols
        symbols=()
        [[ $RETVAL -ne 0 ]] && symbols+=" ${FG_RED}✘$RETVAL"
        [[ $RETVAL -eq 0 ]] && symbols+="${FG_GREEN}✔"
        [[ $UID -eq 0 ]] && symbols+=" ${FG_YELLOW}⚡"
        [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+=" ${FG_CYAN}⚙"

        if [ -n "$symbols" ]; then
            printf "$symbols $1"
        fi
    }

    makePrompt() {
        RETVAL=$?
        local statusEnd="$BG_BASE0$FG_BASE03$_SEG_SEP$RESET"
        local timeSeg="$BG_BASE0$FG_BASE2"
        local timeSegEnd="$FG_BASE0$BG_BLUE${_SEG_SEP}$RESET"
        
        local dirSeg="$BG_BLUE$FG_BASE03"

        # local dirSegEnd
        # if [ $HASGIT -eq 1 ];
        # then
        #     dirSegEnd="$FG_BLUE$BG_MAGENTA${_SEG_SEP}$RESET" #Need to generate this in git_branch
        # else
        #     dirSegEnd="$FG_BLUE$BG_BASE03${_SEG_SEP}$RESET" #Need to generate this in git_branch
        # fi

        # local gitSeg="$BG_MAGENTA$FG_BASE2$(gitStatus)$FG_MAGENTA$BG_BASE03$_SEG_SEP$RESET"

        PS1="\n $(promptStatus "$statusEnd" "$RETVAL")$timeSeg \t $timeSegEnd$dirSeg \w $(gitStatus) $RESET"

    }

    # ps1() {
    #     # Check the exit code of the previous command and display different
    #     # colors in the prompt accordingly. 
    #     if [ $? -eq 0 ]; then
    #         local BG_EXIT="$BG_GREEN"
    #     else
    #         local BG_EXIT="$BG_RED"
    #     fi

    #     PS1="$BG_BASE1$FG_BASE3 \w $RESET"
    #     PS1+="$BG_BLUE$FG_BASE3$(__git_branch)$RESET"
    #     PS1+="$BG_EXIT$FG_BASE3 $RESET "
    # }

    # PROMPT_COMMAND=makePrompt

# bpl
PROMPT_COMMAND=makePrompt
#unset bpl

### ALIASES
alias showal='cat ~/.bash_profile | grep alias'

alias classic='cd ~/Code/zendesk/zendesk'
alias lotus='cd ~/Code/zendesk/zendesk_console'
alias reporting='cd ~/Code/zendesk/zendesk_reporting'
alias hcenter='cd ~/Code/zendesk/help_center'
alias nps='cd ~/Code/zendesk/zendesk_nps'
alias t='bundle exec testrb -ltest $@'
alias fs='foreman start'
alias be='bundle exec'
alias work='script/resque-work'
alias restart='touch tmp/restart.txt'
alias rc='rails console'
alias boxd='cd /opt/boxen/repo'
alias rsall='boxen --restart-service nginx'

### GIT ALIASES
alias gpr='git pull --rebase'
alias ga='git add .'
alias pick='git cherry-pick'
alias gs='git status'
alias gdiff='git diff'

### BACKUP DIR
set backup
set backupdir='~/.vim/tmp'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
eval "$(/Users/spyroslivathinos/Code/zendesk/help_center/.hc/bin/hc init -)"
