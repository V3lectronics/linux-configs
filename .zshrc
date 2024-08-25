# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd
unsetopt beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# required for arduino
export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1

#add to PATH
export PATH="/home/jan/bin:$PATH"

# fix problem unknown terminal alactritty when ssh
export TERM=xterm


# Set LS_COLORS
# export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
#

# Enable colors
autoload -U colors && colors

# Set LS_COLORS with a blue/cyan/green palette
export LS_COLORS="di=1;36:ln=33:so=32:pi=33:ex=32:bd=34;36:cd=34;36:su=33;36:sg=33;36:tw=33;36:ow=33;36"

# Configure zstyle for more granular control
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


PS1='%n@%m %F{cyan}%~%f '

bindkey '^R' history-incremental-search-backward

#custom aliases
alias storage='df -h'
alias ls='ls --color=auto'
alias la='ls -a'
alias gpu='glxinfo | grep -E "OpenGL vendor|OpenGL renderer"'
alias ll='ls -l'
alias db='sudo systemctl start postgresql && sudo -iu postgres'
alias v='nvim'
alias resolve='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia /opt/resolve/bin/resolve'
alias inkscape='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia inkscape'
alias eapi='cd ~/AI && source aivenv/bin/activate && cd EnergyAPI'
alias forest='cd ~/code/forest && source fenv/bin/activate && cd ~/code/forest/projectforest'
alias ts2='cd ~/code/TrzaskaStudio2 && source ts2/bin/activate && cd ~/code/TrzaskaStudio2/ts2project'
alias c='clear'
# alias mnt-sda1='lsblk -f | grep "sda" && sudo mount /dev/sda1 ~/mount-sda1 && lsblk -f | grep "sda"'
alias mnt-sda1='lsblk -f | grep "sda" && sudo mount -o uid=1000,gid=1000,umask=000 /dev/sda1 ~/mount-sda1 && lsblk -f | grep "sda"'
alias umnt-sda1='lsblk -f | grep "sda" && sudo umount /dev/sda1 && lsblk -f | grep "sda"'
# alias umnt-android='sudo umount ~/android-mount'
alias umnt-android='sudo umount ~/mount-android'
# alias mnt-android='jmtpfs ~/android-mount 1> /dev/null && echo "accept file access, mounting in 5s..." && sleep 5 && umount ~/android-mount 1> /dev/null && jmtpfs ~/android-mount'
alias mnt-android='jmtpfs ~/mount-android 1> /dev/null && echo "accept file access, mounting in 5s..." && sleep 5 && umount ~/mount-android 1> /dev/null && jmtpfs ~/mount-android'

alias p='python3'

cpp_compile(){
	g++ -o "$1" "$1.cpp" && ./"$1"
}

alias cpp='cpp_compile'

#alias weather='curl https://wttr.in/Warsaw'
#alias weather='curl https://wttr.in/"$1"'

alias movtomp3='function _movtomp3() { ffmpeg -i "$1" -vn -acodec libmp3lame -b:a 128k "$2"; }; _movtomp3'
alias mp4tomov='function _mp4tomov() { ffmpeg -i "$1" -c:v qtrle -c:a pcm_s16le "$2"; }; _mp4tomov'

weather_function() {
    curl https://wttr.in/$*
}

alias weather='weather_function'

alias lpdf='ls | grep ".pdf"'
alias lpng='ls | grep ".png"'
alias limg='ls | grep ".png" && ls | grep ".jpg"  && ls | grep ".jpeg"'
alias vid='vlc'
alias isadre='cd ~/Isadre && source venv/bin/activate'
alias mes='cd ~/Code/mes && source menv/bin/activate'
alias scrivano='cd ~/Downloads/Scrivano_0.17.7 && ./Scrivano.sh'
alias scripts='cd ~/Videos/tutorials/scripts'
alias wifi='iwctl station wlan0 scan && iwctl station wlan0 show && sleep 2s && iwctl station wlan0 get-networks && ping google.com'
alias monitor='echo "" && echo "--- HDMI and eDP ---" && xrandr -q | grep HDMI && xrandr -q | grep eDP && echo "" &&  echo "--- reloading bspwmrc ---" && ~/.config/bspwm/bspwmrc'
