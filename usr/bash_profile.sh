# CHRISTIAN GONZALEZ
# Bash 2016 Edition
# cpgonzalez@wpi.edu

# .bash_profile
# Profile file for bash user
# Contains user-specific environment variables

# Set path to source
SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Navigation commands
alias gostrap='cd $SRC/..'

# Refresh terminal window
alias refresh='source bash_profile.sh'

# Set colors for terminal prompt
#export TERM=xterm-color
source bash_prompt.sh

# Set colors for terminal commands
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
alias ls="ls --color"
