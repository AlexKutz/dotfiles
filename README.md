git clone --bare $HOME/.dotfiles 
alias dotfiles='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"' 
dotfiles checkout 
dotfiles config --local status.showUntrackedFiles no
