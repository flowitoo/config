#bullshiet not needed stuff
[[ $- != *i* ]] && return
DEFAULT=$PS1
#aliases
alias ls='ls --color=auto'
alias neofetch='neofetch | lolcat'
alias htop='htop | lolcat'
alias irssi='irssi | lolcat'
#shell
PS1="[\e[1;36m\u\e[0m@\h \W]\\[\033[1;36m\]>\[\033[1;34m\]>\[\033[0m\]"
