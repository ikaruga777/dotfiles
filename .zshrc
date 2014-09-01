#強力な補完
autoload -Uz compinit
compinit

setopt correct #コマンドのスペルを訂正する


#History設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#プロンプト
PROMPT='%F{red}(╹◡╹)っ%f'
RPROMPT='%F{white}%35<..<%~/%f'

# 色の設定
#export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
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

SPROMPT="%F{red}( ･ั﹏･ั)???%f %F{magenta}もしかして%f %F{red}%B%r%b%f %F{magenta}？ [うん(y),ちゃう(n)]%f:${reset_color} "

alias g='git'
alias gc='git commit -m'
