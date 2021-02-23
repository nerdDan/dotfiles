set -x EDITOR nvim
set -x GTK_IM_MODULE fcitx
set -x MOZ_ENABLE_WAYLAND 1  # Firefox
set -x QT_IM_MODULE fcitx
set -x QT_QPA_PLATFORM xcb  # RStudio
set -x XMODIFIERS @im=fcitx

set -x PATH $PATH $HOME/.local/bin
set -x PATH $PATH $HOME/.yarn/bin

kitty + complete setup fish | source

if test -z $DISPLAY; and [ (tty) = /dev/tty1 ];
  sway
end
