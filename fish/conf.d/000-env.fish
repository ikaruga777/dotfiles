set -xg LANG ja_JP.UTF-8
set -xg LC_ALL ja_JP.UTF-8

set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/.pyenv/bin $PATH
set -x PATH $HOME/flutter/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

set -x PATH $HOME/.nodenv/bin $PATH
set HISTSIZE 1000000

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; . '~/google-cloud-sdk/path.fish.inc'; end
