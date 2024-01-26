# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="$HOME/tmux:$PATH"

ZSH_THEME="half-life"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias nvm="~/.nvm/nvm.sh"
alias vim="nvim"
alias zrc="vim ~/.zshrc"
alias docs="cd ~/Documents/"
alias v="nvim"
