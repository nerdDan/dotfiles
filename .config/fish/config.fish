set -x EDITOR nvim
set -x GTK_IM_MODULE fcitx
set -x MOZ_ENABLE_WAYLAND 1
set -x QT_AUTO_SCREEN_SCALE_FACTOR 0
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x _JAVA_AWT_WM_NONREPARENTING 1

set -x PATH $PATH $HOME/.local/bin
set -x PATH $PATH $HOME/.yarn/bin

kitty + complete setup fish | source

if test -z $DISPLAY; and [ (tty) = /dev/tty1 ];
  sway
end
