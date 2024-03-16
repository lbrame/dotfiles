#!/bin/bash

#################
# Shell aliases #
#################

# Distrobox
alias ubuntufocalbox="distrobox enter ubuntufocalbox"

# Redefinitions
alias okular="QT_QPA_PLATFORM=XCB QT_QPA_PLATFORMTHEME=Breeze QT_STYLE_OVERRIDE=Breeze okular"
# alias tree="tree -C"
# alias ls="ls --color=auto"
# alias grep="grep --color=always"
alias docker=podman

# Application shortcuts
alias scrcpy_x11="env SDL_VIDEODRIVER=X11 scrcpy"
alias spotify_scaled="flatpak run com.spotify.Client --force-device-scale-factor=1.5"
alias gitkraken="flatpak run com.axosoft.GitKraken"

# Abbreviations
alias untar='tar -zxvf'
alias l="ls --color=never"
alias c="clear"
alias open="xdg-open"
alias fm="xdg-open ."
alias tgdb="gdb --tui"

# SSH
alias start_ssh_agent="eval `ssh-agent -s`"

# Git
alias gl="git log --oneline --decorate --all --graph"

# Git: Clone a git repo with ssh on the private github account
# alias gcp="git clone -c core.sshCommand='/usr/bin/ssh -i /home/luca/.ssh/id_ed25519'"

# Git: Clone a git repo with ssh on the public github account
# alias gcs="git clone -c core.sshCommand='/usr/bin/ssh -i /home/luca/.ssh/id_ed25519_p'"

### Git: account management ###
## Set private account
function gitprivate() {
    export GIT_SSH_COMMAND='ssh -i "~/.ssh/id_ed25519"'
}

## Set public account
function gitpublic() {
    export GIT_SSH_COMMAND='ssh -i "~/.ssh/id_ed25519_p"'
}

# Audio
alias fixalsa="alsactl restore"

# System administration
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias intelperf="sudo sysctl dev.i915.perf_stream_paranoid=0"
alias services="systemctl --type=service"
alias processes="ps -efex"
alias ipaddress="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias fixmesatimeout_i915="sudo echo '5000' > /sys/class/drm/card0/engine/rcs0/preempt_timeout_ms"
alias killwine="killall -9 wineserver"

# Intel CPUs only
alias performance="sudo cpupower frequency-set -g performance"
alias powersave="sudo cpupower frequency-set -g powersave"

# KDE Plasma
if [[ "$XDG_CURRENT_DESKTOP" == "KDE" ]]; then
	alias fixnum="killall -9 kglobalaccel5 && kglobalaccel5 &";
fi

# Pacman
if [[ $(grep -i archlinux /etc/os-release) ]]; then
	alias autoremove="sudo pacman -Runsc $(pacman -Qdtq)"
	alias whatprovides="pacman -Qo"
; fi

# Media
alias mp3dl='yt-dlp --extract-audio --audio-format mp3'
alias oggdl='yt-dlp -extract-audio --audio-format ogg --audio-quality 5 -i'
alias yt_audio_dl='yt-dlp -x bestaudio ytsearch:'

# Shortcuts
alias edit_zsh_conf="$EDITOR ~.zhsrc"
alias edit_nvim_conf="$EDITOR ~/.config/nvim/init.vim"

# Misc
alias extract_icon_exe="wrestool -x --output=. -t14"
