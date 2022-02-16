export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=( git zsh-autosuggestions zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export ARCHFLAGS="-arch x86_64"

#      +---------------------------+ 
#      |          aliases          |
#      +---------------------------+ 


# Change cat to bat
alias cat="bat"

# Change ls to lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Add help for key maps
alias help='cat /home/$USER/.config/bspwm/keybindings'

#      +---------------------------+ 
#      |            Path           |
#      +---------------------------+ 

# Go path
export PATH="$PATH:/home/yasouko/Documents/.development/lang/go/bin"

#      +---------------------------+ 
#      |           System          |
#      +---------------------------+ 

alias lock="/home/$USER/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh"
alias shutdown="shutdown -h now"
alias sleep="systemctl suspend"
alias logout="bspc quit"
