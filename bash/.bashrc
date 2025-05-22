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

#---

# startup hooks
eval "$(starship init bash)"
eval "$(zoxide init bash)"

#---
