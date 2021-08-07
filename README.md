# dotfilesArco
My ArcoLinux dotfiles 

## git setup
### local
```
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```
### connect
```
config remote add origin git@github.com:thehefi/dotfiles.git
```
## usage
```
config add .bashrc
config commit -m "Add bashrc"
config push
```

## References:
1. [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
2. Derek Taylor / Distro Tube on YouTube: [Git Bare Repository - A Better Way To Manage Dotfiles](https://youtu.be/tBoLDpTWVOM)
3. Derek Taylors [dotfiles @ GitLab](https://gitlab.com/dwt1/dotfiles)
