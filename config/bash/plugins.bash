# Start prompt
eval "$(starship init bash)"

# Node Version Manager support
[ -s "$HOME/.config/shell/nvm.sh" ] && \. "$HOME/.config/shell/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

