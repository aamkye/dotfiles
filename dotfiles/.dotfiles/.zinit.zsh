#    ███████╗██╗███╗   ██╗██╗████████╗███████╗███████╗██╗  ██╗
#    ╚══███╔╝██║████╗  ██║██║╚══██╔══╝╚══███╔╝██╔════╝██║  ██║
#      ███╔╝ ██║██╔██╗ ██║██║   ██║     ███╔╝ ███████╗███████║
#     ███╔╝  ██║██║╚██╗██║██║   ██║    ███╔╝  ╚════██║██╔══██║
# ██╗███████╗██║██║ ╚████║██║   ██║██╗███████╗███████║██║  ██║
# ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.zinit.zsh

### ZINIT
export ZINIT="$HOME/.zinit"

# Download Zinit, if it's not there yet
if [[ ! -f "${ZINIT}/zinit.zsh" ]]; then
  git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT}"
fi

source "${ZINIT}/zinit.zsh"

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light marlonrichert/zsh-autocomplete

## Snippets
# zinit snippet OMZP::brew
# zinit snippet OMZP::command-not-found
# zinit snippet OMZP::fzf
# zinit snippet OMZP::git
# zinit snippet OMZP::kubectl
# zinit snippet OMZP::kubectx
# zinit snippet OMZP::sudo
# zinit snippet OMZP::terraform
### END ZINIT
