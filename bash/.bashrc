#
# ~/.bashrc
#

# reload with $ source ~/.bashrc


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt colours (for rasp pi)
STARTFGCOLOR='\e[0;34m'
STARTBGCOLOR1="\e[0;41m"
STARTBGCOLOR2="\e[42m"
ENDCOLOR="\e[0m"

# source various files; aliases etc
for file in ~/.{bash_prompt,bash_aliases,exports,bash_function}; do
    [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

# key bindings
## make tab cycle through commands rather than listing
bind '"\t":menu-complete'

# configure the bash prompts for raspberry pi's
# for the raspberry pi 1, give a red background
if [ $(uname -n) == 'alarmpi1' ]
then
    export PS1="$STARTFGCOLOR$STARTBGCOLOR1 Raspberry Pi 1 > \u@\h \w $ENDCOLOR\n$ "
# and a green background for the raspberry pi 2
elif [ $(uname -n) == 'alarmpi2' ]
then
    export PS1="$STARTFGCOLOR$STARTBGCOLOR2 Raspberry Pi 2 > \u@\h \w $ENDCOLOR\n$ "
fi

# load private key into keychain
if [ $(uname -n) == 'squidbox' ]
then
    eval $(keychain --eval -Q --quiet ~/.ssh/id_rsa_robpc)
fi
