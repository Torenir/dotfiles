set fish_greeting #remove fish greeting at the start

export QT_QPA_PLATFORMTHEME=gtk2 #render qt using gtk themes
#force use of gtk3-nocsd
export GTK_CSD=0
export LD_PRELOAD=/usr/lib/libgtk3-nocsd.so.0

#set -gx MANPAGER "nvim -c 'set ft=man' -"
set -gx MANPAGER 'less'

alias lsa='ls -A'
alias lsblk='lsblk -f'
alias radeontop='radeontop -c'
alias py='python'
alias rm='trash-put'

alias mpv='mpv --hwdec=auto'
alias yt-mp3='youtube-dl --add-header 'Cookie:' --extract-audio --audio-format mp3'
alias steam='steam -silent -no-browser steam://open/minigameslist'
alias sus='systemctl suspend'

if [ (tty) = '/dev/tty1' ]
	sx sh $HOME/.config/xinitrc
end
