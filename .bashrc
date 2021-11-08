#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

RESTORE='\033[0m'

RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'

#sudo wrapper
source ~/.sudo.bash
#alias sudo='sudowrap '

function ls () { command ls --color=auto --group-directories-first "$@"; }

function lsl () {
	ls -la --color=always $1 | command grep "^d" && ls -la $1 | command grep -v "^d"
}

function diff () { command diff --color=auto "$@"; }

function grep () { command grep "$@" --color=always; }

function ip () { command ip -color=auto "$@"; }

function pc () { sudo pacman --color always "$@"; }

function pacman () { command pacman --color always "$@"; }

function rm () { command rm -i "$@"; }

function background () {
	feh --bg-center $1;
}

duk ()
{
   sudo du -k "$@" | sort -n
}

# aliases
alias aseprite="~/.local/share/Steam/steamapps/common/Aseprite/aseprite & disown"
alias update="~/scripts/update"
alias bitwarden="bitwarden-desktop & disown"
alias opera="opera & disown"
alias discord="discord --multi-instance & disown"
alias powercord="powercord & disown"
alias code="code & disown"
alias qute="qutebrowser & disown"
alias neofetch="neofetch --gtk2 off --gtk3 off --source ~/Desktop/ricing/ascii/aperture.txt"
alias pipes.sh="pipes.sh -c 1 -c 2 -c 3 -c 4 -c 5 -c 6 -c 7"
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
