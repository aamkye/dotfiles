#    ███████╗██╗   ██╗ █████╗ ██╗     ███████╗   ███████╗███████╗██╗  ██╗
#    ██╔════╝██║   ██║██╔══██╗██║     ██╔════╝   ╚══███╔╝██╔════╝██║  ██║
#    █████╗  ██║   ██║███████║██║     ███████╗     ███╔╝ ███████╗███████║
#    ██╔══╝  ╚██╗ ██╔╝██╔══██║██║     ╚════██║    ███╔╝  ╚════██║██╔══██║
# ██╗███████╗ ╚████╔╝ ██║  ██║███████╗███████║██╗███████╗███████║██║  ██║
# ╚═╝╚══════╝  ╚═══╝  ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.evals.zsh

### EVALS
# && $(hostname -s) == "axaal"
if [[ "$(whoami)" != "root" ]]; then
  source <(/opt/homebrew/bin/brew shellenv)

  if command -v oh-my-posh > /dev/null 2>&1; then
    eval "$(oh-my-posh init zsh --config ~/.omp.yaml)"
  fi

  if command -v mise > /dev/null 2>&1; then
    source <(mise activate zsh --shims)
    source <(mise activate zsh)
  fi

  if command -v fzf > /dev/null 2>&1; then
    source <(fzf --zsh)
  fi
fi
# ### END EVALS
