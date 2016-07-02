alias rfprof='source ~/.bash_profile'

# Macros for editing files
alias edprof='vim ~/.bash_profile'

# Colors for bash
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
alias ls="ls --color"

# Define colors
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

# Colors for prompt
case $TERM in
     xterm*|rxvt*)
         export TITLEBAR='\[\033]0;\u ${NEW_PWD}\007\]'
          ;;
     *)
         export TITLEBAR=""
          ;;
    esac

export UC=$COLOR_WHITE               # user's color
[ $UID -eq "0" ] && export UC=$COLOR_RED   # root's color
PS1="$TITLEBAR\n\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_BLACK}\]\$(vcprompt) \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "
