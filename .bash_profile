export PATH="$HOME/.rbenv/shims:$PATH"
PATH=/usr/local/bin:$PATH
export PATH

eval "%(rbenv init -)"
# Initialization for FDK command line tools.Sun Jun 21 02:26:43 2015
FDK_EXE="/Users/ikaruga/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/ikaruga/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
source "$HOME/.cargo/env"
