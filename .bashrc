#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

######################
### Prompt Setting ###
######################

PS1='\e[32m\u@\h \e[34m\w \e[35m\t \e[0m\n\$ '
