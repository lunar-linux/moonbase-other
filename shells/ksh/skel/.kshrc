#
# .kshrc
#

export PS1='${USER}@$(hostname -s) ${PWD%%/?*}${PWD##//} $ '
export PS2='+ '
