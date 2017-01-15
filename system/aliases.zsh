#!/usr/bin/env bash

# Easier navigation: .., ..., ...., .....,
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"

# Enable aliases to be sudo’ed
#alias sudo='sudo '

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

alias reload="source ~/.zshrc && echo 'Shell config reloaded from ~/.zshrc'"

alias dotfiles="cd $ZSH"
