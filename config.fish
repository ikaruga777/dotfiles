export LANG=ja_JP.UTF-8
rbenv init - | source
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)

function gconfig-ikaruga
  git config --local user.email "ikaruga777@gmail.com"
  git config --local user.name "ikaruga"
  git config --local -l
end
export GOPATH=$HOME/go
function fish_prompt
    $GOPATH/bin/powerline-go -error $status -shell bare \
         -cwd-max-depth 3 -cwd-max-dir-size -1 \
        -modules time,nix-shell,venv,ssh,user,cwd,perms,docker,git,jobs,exit,vgo \
        -newline
end

alias g='git'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add .'
alias gb='git branch'
alias r='rails'
alias rcs='rails console --sandbox'
alias l='exa'
alias dc='docker compose'
alias dces='docker compose exec spring'
alias d='docker'
alias be='bundle exec'

