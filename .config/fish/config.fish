set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x EDITOR nvim
set -x GOOGLE_APPLICATION_CREDENTIALS /home/dan/Desktop/elsternbruecke-firebase-adminsdk-e4uv2-8451d1e57d.json
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
set -x PATH $PATH $SONAR_SCANNER_HOME/bin
set -x PATH $PATH /usr/lib/emscripten

kitty + complete setup fish | source

if test -z $DISPLAY; and [ (tty) = /dev/tty1 ];
  sway
end
