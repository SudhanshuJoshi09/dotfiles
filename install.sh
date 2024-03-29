sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y

sudo apt-get update

sudo apt-get install neovim -y
sudo apt-get install ripgrep -y

sudo apt install libevent-dev -y


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm -f ~/.zshrc
rm -f ~/.bashrc
rm -rf ~/.config

ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.zshrc ~/.zshrc
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.bashrc ~/.bashrc
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.config ~/

git clone https://github.com/tmux/tmux.git ~/tmux
cd ~/tmux
sh autogen.sh
./configure
make && make install

curl https://sh.rustup.rs -sSf -o rustup-init.sh
chmod +x rustup-init.sh
./rustup-init.sh -y --default-toolchain=stable
