# Enable color if it exists
if [ -x /usr/bin/dircolors ]; then
    test -r "$HOME/.dircolors" && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lha'
alias lsl="ls -lhFA | less"

# cd aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

# find aliases
alias fhere="find . -name "

# ps aliases
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# directory aliases
alias mkdir="mkdir -pv"

alias vim="nvim"

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"

