# dotfilesArco
My ArcoLinux dotfiles 

## git setup
### local
```
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```
### connect remote
```
config remote add origin git@github.com:thehefi/dotfilesArco.git
```
## Backup usage
```
config add .bashrc
config commit -m "Add bashrc"
config push
```
## Restore usage
```
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
echo "dotfiles" >> .gitignore
git clone --bare git@github.com:thehefi/dotfilesArco.git $HOME/dotfiles
config checkout
```
Possible error:
```
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```
Solution is to move all the offending files automatically to a backup folder:
```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
Re-run checkout when there are problems.

Finally:
```
config config --local status.showUntrackedFiles no
```

## References:
1. [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
2. Derek Taylor / Distro Tube on YouTube: [Git Bare Repository - A Better Way To Manage Dotfiles](https://youtu.be/tBoLDpTWVOM)
3. Derek Taylors [dotfiles @ GitLab](https://gitlab.com/dwt1/dotfiles)
