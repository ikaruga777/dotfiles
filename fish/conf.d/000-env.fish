set -xg LANG ja_JP.UTF-8
set -xg LC_ALL ja_JP.UTF-8

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -x PATH /opt/homebrew/bin $PATH

set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/flutter/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH
mise activate fish | source

set HISTSIZE 1000000

