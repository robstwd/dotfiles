#
# ~/.bashrc
#

# reload with $ source ~/.bashrc


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# environment variables
export EDITOR=vim
export XDG_CONFIG_HOME="/home/rob/.config"

# git prompt variables
# http://ithaca.arpinum.org/2013/01/02/git-prompt.html
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="auto git"

# prompt colours (for rasp pi)
STARTFGCOLOR='\e[0;34m'
STARTBGCOLOR1="\e[0;41m"
STARTBGCOLOR2="\e[42m"
ENDCOLOR="\e[0m"

# source aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# source git prompt
if [ -f ~/.config/git/git-prompt.sh ]; then
  . ~/.config/git/git-prompt.sh
fi

# key bindings
## make tab cycle through commands rather than listing
bind '"\t":menu-complete'

# terminal prompt
# PS1='[\u@\h \W]\$ '         # default setting

# configure the bash prompts and ENV variables for different environments
# for my PC have it look like: [ rob@squidbox ] [ ~ ] 08:09:54 
if [ $(uname -m) == 'x86_64' ]
then
  export BSPWM_SOCKET="/tmp/bspwm-socket"
  export BSPWM_TREE="/tmp/bspwm.tree"
  export BSPWM_HISTORY="/tmp/bspwm.history"
  export BSPWM_STACK="/tmp/bspwm.stack"
  export PANEL_FIFO="/tmp/panel-fifo"
  export PS1='[ \u@\h ] [ \W ] \t $(__git_ps1 " (%s)")\n$ '
else
  if [ $(uname -n) == 'alarmpi' ]
  then
    # for the raspberry pi 1, give a red background
    export PS1="$STARTFGCOLOR$STARTBGCOLOR1 Raspberry Pi > \u@\h \w $ENDCOLOR\n$ "
  else
    # and a green background for the raspberry pi 2
    export PS1="$STARTFGCOLOR$STARTBGCOLOR2 Raspberry Pi 2 > \u@\h \w $ENDCOLOR\n$ "
  fi
fi
