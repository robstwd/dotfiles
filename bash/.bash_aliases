# shell aliases
#

# this is sourced via the command:
# $ source ~/.bash_aliases
alias sb='source ~/.bashrc'


# systemd aliases
alias sa='systemd-analyze'
alias sab='systemd-analyze blame'
alias jnl='sudo journalctl'
alias rb='reboot'
alias po='poweroff'
alias sc='systemctl'
alias scf='systemctl --failed'
alias scg='systemctl | grep '
alias scs='systemctl status '
alias ssc='sudo systemctl '
alias ssdr='sudo systemctl daemon-reload'
alias sst='sudo systemctl start '
alias start='sudo systemctl start '
alias ssp='sudo systemctl stop '
alias stop='sudo systemctl stop '
alias ssrs='sudo systemctl restart '
alias ssrl='sudo systemctl reload '
alias sse='sudo systemctl enable '
alias ssd='sudo systemctl disable '
alias sle='systemctl list-unit-files | grep enabled'
alias slt='systemctl list-timers'
alias stv='sudo systemctl start tvheadend'
alias sptv='sudo systemctl stop tvheadend'
alias stm='sudo systemctl start minidlna'
alias stpm='sudo systemctl stop minidlna'

# systemd --user aliases
alias startu='systemctl --user start '
alias stopu='systemctl --user stop '
alias sseu='systemctl --user enable '
alias ssdu='systemctl --user disable '
alias scsu='systemctl --user status '
alias scfu='systemctl --user --failed'
alias sltu='systemctl --user list-timers'
alias sleu='systemctl --user list-unit-files | grep enabled'

# filesystem aliases
alias lmts='sudo blkid -o list -c /dev/null'
alias luds='ls -lF /dev/disk/by-uuid/'
alias mnt='sudo mount'
alias umnt='sudo umount -l'
alias dm="dismount"
alias cx="chmod +x "
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias mk='jmtpfs ~/KindleFire'
alias uk='fusermount -u ~/KindleFire'


# terminal apps
alias ht='htop'
alias cuc='cucumber'
#~ alias rs='rspec'
alias keys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias nv='nvim'


# misc
alias ssq="ssh squidbox"
alias ssr1="ssh raspi-1"
alias ssr2="ssh raspi-2"
alias ssr3="ssh raspi-3"
alias c='clear'
alias x='exit'
alias hx='history'
alias hxg='history | grep -i'
alias ag='alias | grep -i'
alias v='vim'
alias sv='sudo vim'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'
alias e="$EDITOR"

# xinit aliases
#alias stm='xinit monsterwm_run'
#alias sta='xinit awesome'
#alias sto='xinit openbox-session'
#alias std='xinit dwm-personalised'
#alias stx='xinit xbmc'
#alias stdm='xinit dminiwm_start'
#alias sts='xinit snapwm_start'
#alias ste='xinit enlightenment_start'
alias sxi='xinit i3'
alias sxb='xinit'
alias sxm='xinit monsterwm'


# start wm's in additional tty(7)
#~ alias sx7='xinit xbmc -- :1 vt7'
#~ alias so7='xinit openbox-session -- :1 vt7'
#~ alias sd7='xinit dwm-personalised -- :1 vt7'
#~ alias se7='xinit enlightenment_start -- :1 vt7'
#~ alias si7='xinit i3 -- :1 vt7'
#~ alias sa7='xinit awesome -- :1 vt7'
#~ alias ss7='xinit /usr/bin/steam -- :1 vt7'


# git aliases
alias gs='clear && git status'
alias ga='git add'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit -v'
alias gp='git push'
alias gg='git gui'
alias gb='git branch'
alias go='git checkout'
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
#~ alias glog='git log -1 HEAD'


# Pacman alias examples
alias pacupg='sudo pacman -Syu'        				 # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pu='sudo pacman -Syu'        				     # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pacin='sudo pacman -S'           				 # Install specific package(s) from the repositories
alias pi='sudo pacman -S'           				 # Install specific package(s) from the repositories
alias pacins='sudo pacman -U'          				 # Install specific package not from the repositories but from a file
alias pacre='sudo pacman -R'           				 # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        				 # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              				 # Display information about a given package in the repositories
alias pacreps='pacman -Ss'             				 # Search for package(s) in the repositories
alias pacloc='pacman -Qi'              				 # Display information about a given package in the local database
alias paclocs='pacman -Qs'             				 # Search for package(s) in the local database
alias pacupd='sudo pacman -Sy && sudo abs'     # Update and refresh the local package and ABS databases against repositories
alias pacinsd='sudo pacman -S --asdeps'        # Install given package(s) as dependencies of another package
alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
alias plo='pkg-list_true_orphans'              # list true package orphans


# pacaur aliases
alias pai='pacaur -y'                          # download, make and install target(s)
alias pau='pacaur -u'                          # update AUR package(s)
alias pak='pacaur -k'                          # check for AUR update(s), using pacaur
alias cau='cower -v -u'                        # check for AUR update(s), using cower, verbose output

# script aliases
alias lpn="grep -F .pacnew /var/log/pacman.log | grep -v MERGED"
alias rd='rsync_dotfiles.sh'
alias cr='repo_check.sh bspwm sxhkd xtitle sutils bar xwinfo'
alias rr='rsync_to_raspi.py'
alias pq='pushover_quotes.py'
alias ts="scrot ~/Pictures/screenshots/squidbox/'%F-%H%M%S_scrot.png'"
alias cs='du --max-depth=1 -h'                                          # check the size of the subfolders
alias gyt='get_yt.sh '
alias rs='ruby-snmp.rb'
alias rh='rsync_home.py'
alias rp='rsync_pictures.py'
alias is='internet-status.sh'

# build aliases
alias smi='sudo make install'

# mount raspberry pi 2 NAS drives with sshfs
alias ssmi='sshfs rob@10.0.0.51:/mnt/Io $HOME/mounts/Io -C -p 22'
alias ssmiu='fusermount -u $HOME/mounts/Io'

alias ssmc='sshfs rob@10.0.0.51:/mnt/Callisto $HOME/mounts/Callisto -C -p 22'
alias ssmcu='fusermount -u $HOME/mounts/Callisto'

alias ssmg='sshfs rob@10.0.0.51:/mnt/Ganymede $HOME/mounts/Ganymede -C -p 22'
alias ssmgu='fusermount -u $HOME/mounts/Ganymede'

alias ssme='sshfs rob@10.0.0.51:/mnt/Europa $HOME/mounts/Europa -C -p 22'
alias ssmeu='fusermount -u $HOME/mounts/Europa'

alias smr1='sshfs rob@10.0.0.50:/ $HOME/mounts/raspberrypi1 -C -p 22'
alias smr1u='fusermount -u $HOME/mounts/raspberrypi1'

alias smr2='sshfs rob@10.0.0.51:/ $HOME/mounts/raspberrypi2 -C -p 39906'
alias smr2u='fusermount -u $HOME/mounts/raspberrypi2'

alias smr3='sshfs rob@10.0.0.52:/ $HOME/mounts/raspberrypi3 -C'
alias smr3u='fusermount -u $HOME/mounts/raspberrypi3'

# docker aliases
alias dk='docker '
alias dr='docker run '
alias di='docker images'
alias db='docker build'
alias rdi='docker rmi $(docker images --filter "dangling=true" --quiet)'           # remove dangling images
alias dp='docker ps'
alias lrc='docker ps'                                                   # list running containers
alias dpa='docker ps --all'
alias rsc='docker rm $(docker ps --filter status=exited --quiet)'                  # remove stopped containers
alias de='docker exec'
alias din='docker inspect'

# directory changes
alias go.dots='cd $HOME/scripts/Projects/dotfiles/dotfile_repo'
