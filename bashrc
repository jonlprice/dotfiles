set -o vi
alias python=python3
alias vi=nvim

# The following line ensures that history logs screen commands as well
shopt -s histappend

# Have lots of history
HISTSIZE=100000         # remember the last 100000 commands
HISTFILESIZE=100000     # start truncating commands after 100000 lines
HISTCONTROL=ignoreboth  # ignoreboth is shorthand for ignorespace and     ignoredups

LESSPIPE=$(which src-hilite-lesspipe.sh)
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '

eval "$(starship init bash)"
