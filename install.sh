sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y

sudo apt-get update
sudo apt-get install tmux -y
sudo apt-get install neovim -y
sudo apt-get install ripgrep -y
sudo usermod --shell /usr/bin/tmux $(whoami)

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm -f ~/.zshrc
rm -f ~/.bashrc
rm -rf ~/.config

ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.zshrc ~/.zshrc
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.bashrc ~/.bashrc
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.config ~/
