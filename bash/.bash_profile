#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="${PATH}:/home/rob/bin"

systemctl --user import-environment PATH
