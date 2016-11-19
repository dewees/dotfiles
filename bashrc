#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias please='sudo $(history -p !!)'
alias upd='sudo pacman -Syu'

# Color mapping
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[00m\]'

# red
PS1='${debian_chroot:+($debian_chroot)}\[\033[1;31m\][\u][\h][\w]\[\033[00m\]\$ '


function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
