#強力な補完
autoload -Uz compinit

setopt correct #コマンドのスペルを訂正する


#History設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#プロンプト
#PROMPT='%F{red}(╹◡╹)っ%f'
#RPROMPT='%F{white}%35<..<%~/%f'

# 色の設定
#export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
#export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# lsコマンド時、自動で色がつく
export CLICOLOR=tru
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
# cdコマンド実行後、lsを実行する
function cd() {
  builtin cd $@ && ls;
}

function gconfig-akatsuura() {
  git config --local user.email "a.katsuura1991@gmail.com"
  git config --local user.name "akatsuura"
  git config --local -l
}
function gconfig-ikaruga() {
  git config --local user.email "ikaruga777@gmail.com"
  git config --local user.name "ikaruga"
  git config --local -l
}

SPROMPT="%F{red}( ･ั﹏･ั)???%f %F{magenta}もしかして%f %F{red}%B%r%b%f %F{magenta}？ [うん(y),ちゃう(n)]%f:${reset_color} "

alias g='git'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add .'
alias gb='git branch'
alias r='rails'
alias rcs='rails console --sandbox'
#ZSH_THEME ="powerline"
#gitのブランチ補完
fpath=(/usr/local/share/zsh-completions $fpath)
export PYTHONPATH="/usr/local/lib/python2.7/site-packages/:$PYTHONPATH"
export PATH=$PATH:~/settings/powerline/scripts
. ~/settings/powerline/powerline/bindings/zsh/powerline.zsh
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init - zsh)"
