export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder

plugins=(git zoxide tmux zsh-completions docker ssh)

source $ZSH/oh-my-zsh.sh

alias ls=eza
alias cd=z
alias lg=lazygit
alias vi=nvim
alias vim=nvim

eval "$(zoxide init zsh)"

# SDKMAN for jdk
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/Users/harrison/.bun/_bun" ] && source "/Users/harrison/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export CLASSPATH="$CLASSPATH:/Users/harrison/.local/share/nvim/lombok.jar"
export JAVA_TOOL_OPTIONS="-javaagent:$HOME/.local/share/nvim/lombok.jar"

export AWS_REGION=ap-southeast-2

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Pure ZSH Prompt
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
