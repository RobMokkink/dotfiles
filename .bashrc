# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Aliases
alias dotfiles='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'
alias k8s='k8sstatus'
alias k='kubectl'
complete -F __start_kubectl k
alias kn="kubectl config set-context --current --namespace"

# Powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# Disable POWERLINE_K8SSTATUS by default
export POWERLINE_K8SSTATUS=0

# K8S status for powerline
k8sstatus() {
    if [[ $POWERLINE_K8SSTATUS = "0" ]]; then
        unset POWERLINE_K8SSTATUS
    else
        export POWERLINE_K8SSTATUS=0
    fi
}
