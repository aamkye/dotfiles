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

[[ -f ${HOME}/.dotfiles/.history.zsh ]]   && source ${HOME}/.dotfiles/.history.zsh
[[ -f ${HOME}/.dotfiles/.variables.zsh ]] && source ${HOME}/.dotfiles/.variables.zsh
[[ -f ${HOME}/.dotfiles/.evals.zsh ]]     && source ${HOME}/.dotfiles/.evals.zsh
[[ -f ${HOME}/.dotfiles/.zinit.zsh ]]     && source ${HOME}/.dotfiles/.zinit.zsh
[[ -f ${HOME}/.dotfiles/.priv.zsh ]]      && source ${HOME}/.dotfiles/.priv.zsh
[[ -f ${HOME}/.dotfiles/.ssh.zsh ]]       && source ${HOME}/.dotfiles/.ssh.zsh
[[ -f ${HOME}/.dotfiles/.company.zsh ]]   && source ${HOME}/.dotfiles/.company.zsh
[[ -f ${HOME}/.dotfiles/.homelab.zsh ]]   && source ${HOME}/.dotfiles/.homelab.zsh
[[ -f ${HOME}/.dotfiles/.plugins.zsh ]]   && source ${HOME}/.dotfiles/.plugins.zsh
[[ -f ${HOME}/.dotfiles/.bindkeys.zsh ]]  && source ${HOME}/.dotfiles/.bindkeys.zsh
