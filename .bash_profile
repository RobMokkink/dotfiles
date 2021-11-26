# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
alias dotfiles='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'
