# 
# ▓██   ██▓ █    ██  ███▄ ▄███▓▄▄▄█████▓▓█████ ▓█████ 
#  ▒██  ██▒ ██  ▓██▒▓██▒▀█▀ ██▒▓  ██▒ ▓▒▓█   ▀ ▓█   ▀ 
#   ▒██ ██░▓██  ▒██░▓██    ▓██░▒ ▓██░ ▒░▒███   ▒███   
#   ░ ▐██▓░▓▓█  ░██░▒██    ▒██ ░ ▓██▓ ░ ▒▓█  ▄ ▒▓█  ▄ 
#   ░ ██▒▓░▒▒█████▓ ▒██▒   ░██▒  ▒██▒ ░ ░▒████▒░▒████▒
#    ██▒▒▒ ░▒▓▒ ▒ ▒ ░ ▒░   ░  ░  ▒ ░░   ░░ ▒░ ░░░ ▒░ ░
#  ▓██ ░▒░ ░░▒░ ░ ░ ░  ░      ░    ░     ░ ░  ░ ░ ░  ░
#  ▒ ▒ ░░   ░░░ ░ ░ ░      ░     ░         ░      ░   
#  ░ ░        ░            ░               ░  ░   ░  ░
#  ░ ░                                                

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-history
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yumtee/.zshrc'

#------------------------------
# ZSH Autosuggestions
#------------------------------
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U compinit promptinit colors
compinit
promptinit
colors
# End of lines added by compinstall

precmd() { print '' }

#------------------------------
# Variables
#------------------------------
export BROWSER='chromium'
export EDITOR='nano'

#------------------------------
# Aliases
#------------------------------
alias root='sudo -i'
alias su='sudo -i'
alias pacman='sudo pacman'
alias nano='sudo nano'
alias fanmax='sudo bash -c "echo 255 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[:print:]]*/pwm1"'
alias fanmin='sudo bash -c "echo 0 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[:print:]]*/pwm1"'
alias autofan='sudo bash -c "echo 2 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[[:print:]]*/pwm1_enable"'
alias manfan='sudo bash -c "echo 1 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[[:print:]]*/pwm1_enable"'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias yupdate='yay -Syu'
alias yays='yay -S'
alias yayrns='yay -Rns'
alias rmorphans='yay -Rns $(pacman -Qtdq)'
alias rmcache='yay -Sc'
alias sensors='watch -n 1 "sensors"'
alias clr='clear'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias mkdir='mkdir -pv'
alias rcp='rsync -v --progress'
alias chmod='chmod -c'
alias chown='chown -c'
alias own='sudo chown $USER:$USER'
alias installfont='sudo fc-cache -f -v'
alias mount='mount |column -t'
alias ls='ls --color=auto --human-readable --group-directories-first'
alias ll='ls --color=auto --human-readable --group-directories-first -l'
alias lla='ls --color=auto --human-readable --group-directories-first -la'
# Power control
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
# System info
alias meminfo='free -mlt'
alias cpuinfo='lscpu'
# Useful shortcuts
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
# Color support
#alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='colordiff'
alias make='colormake'
alias gcc='colorgcc'

#------------------------------
# Git autocomplete
#------------------------------
fpath=(~/.zsh $fpath)

#------------------------------
# Powerline
#------------------------------
prompt off
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

