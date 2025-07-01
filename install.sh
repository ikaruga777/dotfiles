# Create necessary directories
mkdir -p ~/.config/nvim
mkdir -p ~/.config/fish/conf.d
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/wezterm
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/zellij

# Create symbolic links
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.tigrc ~/.tigrc
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -fs ~/dotfiles/fish/conf.d/000-env.fish ~/.config/fish/conf.d/000-env.fish
ln -sf ~/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/.pryrc ~/.pryrc
ln -sf ~/dotfiles/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.asdfrc ~/.asdfrc
ln -sf ~/dotfiles/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config
ln -sf ~/dotfiles/zellij/config.kdl ~/.config/zellij/config.kdl
