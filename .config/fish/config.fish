set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x EDITOR nvim
set -x GTK_IM_MODULE fcitx
set -x MSF_DATABASE_CONFIG $HOME/.msf4/database.yml
set -x QT_AUTO_SCREEN_SCALE_FACTOR 0
set -x QT_IM_MODULE fcitx
set -x SONAR_SCANNER_HOME /opt/sonar-scanner
set -x XMODIFIERS @im=fcitx

set -x PATH $PATH $HOME/.gem/ruby/2.6.0/bin
set -x PATH $PATH $HOME/.local/bin
set -x PATH $PATH $HOME/.yarn/bin
set -x PATH $PATH $SONAR_SCANNER_HOME/bin

kitty + complete setup fish | source

if test -z $DISPLAY; and [ (tty) = /dev/tty1 ];
  sway
end
