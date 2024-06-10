#!/usr/bin/env zsh

#    ███████╗███████╗██╗  ██╗██████╗  ██████╗
#    ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#      ███╔╝ ███████╗███████║██████╔╝██║
#     ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
# # https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# tmux detach or delete; https://superuser.com/questions/1466769/how-to-make-ctrld-detach-tmux-while-retaining-gnu-readline-capabilities-in-bas/1466808#1466808
# function _delete_or_maybe_detach() {
#   [ -n "$BUFFER" ] && zle delete-char-or-list
#   [ "$(tmux list-windows | wc -l)" -gt 1 ] && exit
#   [ "$(tmux list-panes | wc -l)" -gt 1 ] && exit
#   tmux detach-client
# }

# if [[ -n "$TMUX" ]]; then
#   setopt ignoreeof
#   zle -N _delete_or_maybe_detach
#   bindkey "^D" _delete_or_maybe_detach
# fi

function tmuxx() {
  if tmux has-session -t "${1:-main}" 2>/dev/null; then
    tmux attach-session -t "${1:-main}"
  else
    tmux new-session -s "${1:-main}"
  fi
}

# set -x

[[ -f ${HOME}/.dotfiles/.evals.zsh ]]                && source ${HOME}/.dotfiles/.evals.zsh
[[ -f ${HOME}/.dotfiles/.history_zsh_options.zsh ]]  && source ${HOME}/.dotfiles/.history_zsh_options.zsh
[[ -f ${HOME}/.dotfiles/.variables.zsh ]]            && source ${HOME}/.dotfiles/.variables.zsh
[[ -f ${HOME}/.dotfiles/.zinit.zsh ]]                && source ${HOME}/.dotfiles/.zinit.zsh
[[ -f ${HOME}/.dotfiles/.zsh_plugin_config.zsh ]]    && source ${HOME}/.dotfiles/.zsh_plugin_config.zsh
[[ -f ${HOME}/.dotfiles/.priv.zsh ]]                 && source ${HOME}/.dotfiles/.priv.zsh
[[ -f ${HOME}/.dotfiles/.company.zsh ]]              && source ${HOME}/.dotfiles/.company.zsh
[[ -f ${HOME}/.dotfiles/.homelab.zsh ]]              && source ${HOME}/.dotfiles/.homelab.zsh
