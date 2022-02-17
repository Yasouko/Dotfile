# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
