nm-applet&
source $HOME/.zshrc
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock&
$HOME/scripts/xscreensaverstopper.sh&
setxkbmap fr
~/scripts/wall.sh&
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
redshift-gtk&
source ~/.zshrc
exec awesome
