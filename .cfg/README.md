# Installation guide
echo ".cfg" >> .gitignore
git clone git@github.com:Dutesier/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=<path to .cfg’s Git directory> --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
