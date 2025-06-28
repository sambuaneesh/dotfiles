# ~/.bashrc

# recomm defaults
bind "set completion-ignore-case on"
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
PROMPT_COMMAND='history -a'

#---

# aliases
## common
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias grep='grep --color=auto'

## custom
alias conf='nvim ~/dotfiles/bash/.bashrc && source ~/.bashrc'
alias aconf='nvim /mnt/c/Users/Aneesh/AppData/Roaming/alacritty/alacritty.yml'
alias tconf='nvim ~/dotfiles/tmux/.tmux.conf'
alias nconf='nvim ~/dotfiles/nvim/.config/nvim/init.lua'
alias n='nvim'
alias t='tmux'
alias cling='/home/stealthspectre/cling-build/bin/cling'
alias machlinux='ssh -Y stealthspectre@10.2.135.200'
alias gemini-cli='bunx https://github.com/google-gemini/gemini-cli'

#---

# startup hooks
eval "$(starship init bash)"
eval "$(zoxide init bash)"

#---

# xauth for GUI for machlinux
export DISPLAY=$(ip route | awk '/^default/ {print $3}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GEMINI_API_KEY="AIzaSyDTfurpECY3vsSABnQZu1c5Z5Yl-pjQFAU"
