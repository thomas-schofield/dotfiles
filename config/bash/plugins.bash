# Start prompt
eval "$(starship init bash)"

# Node Version Manager support
[ -s "config/shell/nvm.sh" ] && \. "config/shell/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

