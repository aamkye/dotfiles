### ZINIT
export ZINIT=$HOME/.zinit

# Download Zinit, if it's not there yet
if [[ ! -f "${ZINIT}/zinit.zsh" ]]; then
  git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT}"
fi

source "${ZINIT}/zinit.zsh"

## Plugins
# if [[ -f ${HOME}/.dotfiles/.p10k.zsh ]]; then
#   zinit ice depth=1; zinit light romkatv/powerlevel10k
# fi

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light marlonrichert/zsh-autocomplete

## Snippets
if [[ "$(whoami)" != "root" && $(hostname -s) == "axaal" ]]; then
  zinit snippet OMZP::aws
  zinit snippet OMZP::brew
  zinit snippet OMZP::docker
  zinit snippet OMZP::fzf
  zinit snippet OMZP::gh
  zinit snippet OMZP::git
  zinit snippet OMZP::git-extras
  zinit snippet OMZP::git-lfs
  zinit snippet OMZP::kubectl
  zinit snippet OMZP::kubectx
  zinit snippet OMZP::mise
  zinit snippet OMZP::terraform
  zinit snippet OMZP::tmux
fi

zinit snippet OMZP::colored-man-pages
zinit snippet OMZP::command-not-found
zinit snippet OMZP::gnu-utils
zinit snippet OMZP::sudo
### END ZINIT
