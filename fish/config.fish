function fish_prompt
    set duration (math -s6 "$CMD_DURATION / 1000")
    $GOPATH/bin/powerline-go -error $status -shell bare \
        -cwd-max-depth 3 -cwd-max-dir-size -1 \
        -git-assume-unchanged-size 3000 \
        -hostname-only-if-ssh \
        -duration $duration \
        -duration-min 1 \
        -modules time,duration,host,nix-shell,venv,aws,ssh,cwd,perms,docker,git,jobs,exit \
        -newline \
        -numeric-exit-codes \
        -theme solarized-dark16
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
  source ~/.config/fish/conf.d/*.fish
end

function vfn
  git ls-tree -r --name-only HEAD | fzf --preview 'bat --color=always --style=header,grid --line-range :100 {}' | xargs -o nvim
end

function vf
  git ls-tree -r --name-only HEAD | fzf --preview 'bat --color=always --style=header,grid --line-range :100 {}' --bind 'focus:bg-transform-header(file {};wc {})' | xargs -o vim
end

function hxf
  git ls-tree -r --name-only HEAD | fzf --preview 'bat --color=always --style=header,grid --line-range :100 {}' | xargs -o hx
end

function checkout-with-preview
   git branch --list | cut -c 3- | sort | fzf --tmux --preview "git log -20 --oneline --graph --color=always {}" | xargs git checkout
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

function fish_should_add_to_history
 for cmd in set
   string match -qr "^$cmd" -- $argv; and return 1
   end
  return 0
end

function delete-zllij-sessions
  zellij ls | sed 's/\x1b\[[0-9;]*m//g' | awk '/EXITED/ {print $1}' | xargs -I {} zellij d {}
end
abbr -a zpoi 'delete-zllij-sessions'

abbr -a g 'git'
abbr -a gc 'git commit'
abbr -a gp 'git pull'
abbr -a gco 'git checkout'
abbr -a gs 'git switch'
abbr -a gr 'git restore'
abbr -a ga 'git add .'
abbr -a gb 'git branch'
abbr -a co 'checkout-with-preview'
abbr -a r 'bin/rails'
abbr -a rcs 'bin/rails console --sandbox'
abbr -a l 'lsd -a'
abbr -a dc 'docker compose'
abbr -a de 'docker compose exec'
abbr -a dces 'docker compose exec spring'
abbr -a de 'docker compose exec'
abbr -a d 'docker'
abbr -a kc 'kubectl'
abbr -a be 'bundle exec'
abbr -a lzd 'lazydocker'
abbr -a asdf 'mise'
abbr -a c 'colima'
abbr -a ef 'edit-config-fish'
abbr -a notes 'rg "TODO|HACK|FIXME|OPTIMIZE"'

abbr -a rtx 'mise'
if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

function ide
  tmux split-window -v -p 30
  tmux split-window -h -p 66
  tmux split-window -h -p 50
end
