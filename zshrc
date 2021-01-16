# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases

if [ -f $HOME/.config/shell/aliases.sh ]; then
    source $HOME/.config/shell/aliases.sh
fi

# Plugins
if [ -f $HOME/.config/zsh/plugins.zsh ]; then
    source $HOME/.config/zsh/plugins.zsh
fi

# Setup starship prompt
eval "$(starship init zsh)"

# macOS only
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

