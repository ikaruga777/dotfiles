function fish_prompt
    $GOPATH/bin/powerline-go -error $status -shell bare \
        -cwd-max-depth 3 -cwd-max-dir-size -1 \
        -git-assume-unchanged-size 3000 \
        -hostname-only-if-ssh \
        -modules time,host,nix-shell,venv,ssh,user,cwd,perms,docker,git,jobs,exit,vgo \
        -newline \
        -numeric-exit-codes
end

function gconfig-ikaruga
  git config --local user.email "ikaruga777@gmail.com"
  git config --local user.name "ikaruga"
  git config --local -l
end

function edit-config-fish
  vim ~/.config/fish/config.fish
  reload-config
  echo 'reloaded.'
end

function reload-config
   source ~/.config/fish/config.fish
end

function f
  git ls-tree -r --name-only HEAD
end

function vf
  f | fzf | xargs -o vim
end

alias g='git'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add .'
alias gb='git branch'
alias r='rails'
alias rcs='rails console --sandbox'
alias l='exa'
alias dc='docker-compose'
alias dces='docker-compose exec spring'
alias d='docker'
alias be='bundle exec'

alias ef 'edit-config-fish'
alias notes 'rg "TODO|HACK|FIXME|OPTIMIZE"'
 

alias amech='docker run -e TERM_PROGRAM --rm otiai10/amesh'
alias lzd='lazydocker'

