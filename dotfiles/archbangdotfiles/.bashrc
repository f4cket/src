alias ls='ls --color=auto'
[ ! "$UID" = "0" ] && archbey -c white
[  "$UID" = "0" ] && archbey -c green
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
