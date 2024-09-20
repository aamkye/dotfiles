### EVALS
# && $(hostname -s) == "axaal"
if [[ "$(whoami)" != "root" ]]; then
  source <(/opt/homebrew/bin/brew shellenv)
  source <(oh-my-posh init zsh --config ~/.dotfiles/.omp.yaml)
  source <(mise activate zsh --shims)
  source <(mise activate zsh)

  if command -v fzf > /dev/null 2>&1; then
    source <(fzf --zsh)
  fi
fi
# ### END EVALS
