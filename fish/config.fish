function fish_prompt
    $GOPATH/bin/powerline-go -error $status -shell bare \
        -cwd-max-depth 3 -cwd-max-dir-size -1 \
        -git-assume-unchanged-size 3000 \
        -hostname-only-if-ssh \
        -modules time,host,nix-shell,venv,kube,aws,ssh,cwd,perms,docker,git,jobs,load,exit,vgo \
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
  f | fzf --preview 'bat --color=always --style=header,grid --line-range :100 {}' | xargs -o vim
end

function hxf
  f | fzf --preview 'bat --color=always --style=header,grid --line-range :100 {}' | xargs -o hx
end

function dwhois
   dig $argv +short | xargs whois
end

function copy-command
  echo $argv | pbcopy
  $argv
end
abbr -a cc 'copy-command'

function copy-prev-command
  history | sed -n 1p | pbcopy
end
abbr -a ccp 'copy-prev-command'

abbr -a g 'git'
abbr -a gc 'git commit'
abbr -a gp 'git push'
abbr -a gco 'git checkout'
abbr -a gs 'git switch'
abbr -a gr 'git restore'
abbr -a ga 'git add .'
abbr -a gb 'git branch'
abbr -a gp 'git push'
abbr -a r 'rails'
abbr -a rcs 'rails console --sandbox'
abbr -a l 'lsd -a'
abbr -a dc 'docker compose'
abbr -a dces 'docker compose exec spring'
abbr -a d 'docker'
abbr -a kc 'kubectl'
abbr -a be 'bundle exec'
abbr -a lzd 'lazydocker'

abbr -a ef 'edit-config-fish'
abbr -a notes 'rg "TODO|HACK|FIXME|OPTIMIZE"'

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end
