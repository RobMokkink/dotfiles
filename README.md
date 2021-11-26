# dotfiles

Clone this repo:
```
git clone --bare <url> ${HOME}/.dotfiles
```

Set an alias:
```
alias dotfiles='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'
```

Ignore untracked files:
```
dotfiles config --local status.showUntrackedFiles no
```

Checkout the configuration:
```
dotfiles checkout
```
