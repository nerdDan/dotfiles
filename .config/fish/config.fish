set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x EDITOR nvim
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x SONAR_SCANNER_HOME /opt/sonar-scanner
set -x TERMINAL kitty
set -x XMODIFIERS @im=fcitx

set -x PATH $PATH $HOME/.gem/ruby/2.6.0/bin
set -x PATH $PATH $HOME/.local/bin
set -x PATH $PATH $HOME/.yarn/bin
set -x PATH $PATH $HOME/go/bin
set -x PATH $PATH $HOME/.gem/ruby/2.6.0/bin

kitty + complete setup fish | source
xinput --set-prop "Synaptics TM3288-011" "libinput Natural Scrolling Enabled" 1

if test -z $DISPLAY; and [ (tty) = /dev/tty1 ];
  exec startx
end
