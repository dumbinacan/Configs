# aliases.zsh

alias sudo='sudo '
alias dd='dd status=progress'
alias ping='ping -c3'
alias journal='~/Configs/init/zsh/journal.sh'
alias cmatrix='neo-matrix'
alias system_cleanup='sudo pacman --confirm -Rnsc $(pacman -Qdtq) && sudo paccache -r && sudo paccache -ruk0'
