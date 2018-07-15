### ZSH CONFIG
export ZSH=/Users/Cube\ 1/.oh-my-zsh	# Path to oh-my-zsh installation
ZSH_THEME="agnoster"			# Set name of the theme to load
HYPHEN_INSENSITIVE="true"		# Use hyphen-insensitive completion
export UPDATE_ZSH_DAYS=13		# How often to auto-update (in days)
ENABLE_CORRECTION="true"		# Command auto-correction
plugins=(git)				# Plugins to load on runtime.


export HOME=/Users/Cube\ 1
export PATH=/usr/local/opt/sqlite/bin:/usr/local/opt/curl/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#ZSH syntax highlighting (via Homebrew)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Keybinds for word-jumping with Option-Arrow
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word


### EXPORTS
export DOCKER_HOST="tcp://0.0.0.0:2375"
export PROJECTS="${HOME}/Documents/projects"
export VIMPLUGINS="${HOME}/.config/nvim/init.vim"

### ALIASES
alias cls="clear"
alias e="emacs"
alias gcc99="gcc -std=99"
alias gitforcecls='git add -A && git checkout --force'
alias gpgverifyfile="gpg --no-default-keyring --keyring ~/.gnupg/pubring.gpg --verify"
alias gpr="gprolog"
alias lo="logout"
alias py="python"
alias pyc="python -m py_compile"
alias random="py -c \"from random import randint; a = [True, False]; print a[randint(0, len(a)-1)]\""
alias vim=nvim
alias v=vim #Depends on `vim`


### CUSTOM FUNCTIONS
calc () {
#  (( d = $1 ))
  echo d | bc
}

function cs {
    builtin cd "$@" && ls -a
}

function lg () {
	if [[ $# -eq 2 ]]; then
		ls -1 $1 | grep $2
	elif [[ $1 ]]; then
		ls -a1 | grep $1
	else
		ls -a1
	fi
}


### OTHERS
# Jabba setup
[ -s "/Users/Cube\ 1/.jabba/jabba.sh" ] && source "/Users/Cube\ 1/.jabba/jabba.sh"

