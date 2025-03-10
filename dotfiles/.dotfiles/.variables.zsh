#   ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗   ███████╗███████╗██╗  ██╗
#   ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝   ╚══███╔╝██╔════╝██║  ██║
#   ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗     ███╔╝ ███████╗███████║
#   ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║    ███╔╝  ╚════██║██╔══██║
# ██╗╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║██╗███████╗███████║██║  ██║
# ╚═╝ ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.variables.zsh

### VARIABLES
export TERM=xterm-256color

# paths
export PATH="${HOME}/.local/bin:${PATH}"
# export PATH="${HOME}/.rd/bin:${PATH}"
export PATH="${HOME}/bin:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="/usr/local/sbin:${PATH}"

export EDITOR="code --wait"
export INTERACTIVE_EDITOR="code --wait"

# debugging
export PS4='+ $0:$LINENO '

# language settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# word delimiters
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# fzf trigger
export FZF_COMPLETION_TRIGGER='@@'
# export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude git"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude •git"

export ZELLIJ_AUTO_ATTACH="true"
export ZELLIJ_AUTO_EXIT="false"
export ZELLIJ_CONFIG_FILE="${HOME}/.zellij.kdl"

# export FZF_DEFAULT_OPTS="--height 50% --Layout=default —-border --coLor=hL:#2dd4bf"
### END VARIABLES
