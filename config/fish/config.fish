set fish_greeting #remove fish greeting at the start

export QT_QPA_PLATFORMTHEME=qt5ct
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
alias :q='exit'
alias cpr='rclone copy --progress'
alias cps='rclone sync --progress'

alias vifm='rm ~/.config/vifm/vifminfo.json; /bin/vifm'
alias yt-mp3='youtube-dl --add-header 'Cookie:' --extract-audio --audio-format mp3'
alias steam='LD_PRELOAD="~/.config/altlibsteam/sdl_block_screensaver_inhibit.so" SDL_VIDEO_ALLOW_SCREENSAVER=1 /bin/steam -silent -no-browser steam://open/minigameslist'
alias sus='systemctl suspend'

if [ (tty) = '/dev/tty1' ]
	sx sh $HOME/.config/xinitrc
else
	tmux attach -t DEFAULT 2> /dev/null || tmux new -s DEFAULT 2> /dev/null
end
