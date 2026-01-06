export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder

plugins=(git tmux zsh-completions docker ssh zoxide zsh-autosuggestions zsh-syntax-highlighting)

alias ls=eza
alias cd=z
alias lg=lazygit
alias vi=nvim
alias vim=nvim

source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh
# eval "$(zoxide init zsh)"

