#    ██████╗ ██████╗ ██╗██╗   ██╗   ███████╗███████╗██╗  ██╗
#    ██╔══██╗██╔══██╗██║██║   ██║   ╚══███╔╝██╔════╝██║  ██║
#    ██████╔╝██████╔╝██║██║   ██║     ███╔╝ ███████╗███████║
#    ██╔═══╝ ██╔══██╗██║╚██╗ ██╔╝    ███╔╝  ╚════██║██╔══██║
# ██╗██║     ██║  ██║██║ ╚████╔╝ ██╗███████╗███████║██║  ██║
# ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.priv.zsh

# --- MacOS -------------------------------------------------------------------

alias make="gmake"
alias grep="ggrep"

# --- General -----------------------------------------------------------------

alias back="cd $OLDPWD"
alias c="clear"
alias check_tunnels="sudo lsof -i -n | grep \"IPv4\" | egrep '\<ssh\>'"
alias cp+="cp -rfiv"
alias df+="df -h"
alias du+="du -c -h"
alias ducks='du -cks -- * | sort -rn | head'
alias get_public_key="ssh-keygen -y -f"
# alias less="less -CfJMNRSUW"
alias ll="eza --long --header --group --colour-scale --group-directories-first --octal-permissions --time-style=long-iso -a"
# alias ll="eza -alhgF --group-directories-first --octal-permissions --sort name --git"
alias etree="et --ignore-git --dirs-first --sort name -HI"
alias mkdir+="mkdir -p -v"
# alias mv="noglob zmv -W"
alias reload="exec -l ${SHELL}"
alias rm+="rm -rfiv"
alias root="sudo -s"
alias rsync+='rsync \
  --partial \
  --progress \
  --recursive \
  --times \
  --stats \
  --human-readable \
  --no-compress \
  --verbose \
  --append-verify'
alias swapcls='sudo swapoff -a && sudo swapon -a'
alias test_color="msgcat --color=test"
alias omp="oh-my-posh"

# --- Git ---------------------------------------------------------------------
alias gca+="git commit --amend --reuse-message=HEAD@{1}"
alias gdf="git diff -U0 --word-diff"
alias glgf="glgs --follow -U0 --word-diff -p"
alias glgs="git log --pretty=\"format:%C(yellow)%h %Creset| %Cblue%ar - %aD %Creset| %Cgreen%aE %Creset|%Cred%d %Creset%s%n\" --abbrev=12 --graph --full-history --stat"
alias glgs1="git log --pretty=\"format:%C(yellow)%h %Creset| %Cblue%ar %Creset| %Cgreen%aE %Creset|%Cred%d %Creset%s\" --abbrev=12"
alias glgs2="git log --pretty=\"format:%C(yellow)%h %Creset| %Cblue%ar %Creset| %Cgreen%aE %Creset|%Cred%d %Creset%s%n\" --abbrev=12 -U0 -p --word-diff"
alias gss="git submodule status"

git_squash () {
    git reset $(git merge-base $1 $(git rev-parse --abbrev-ref HEAD))
    git add -A
    git commit -m "${2}"
}

# --- Tooling -----------------------------------------------------------------
alias ac="export ANSIBLE_CONFIG=./ansible.cfg"
alias ap="ansible-playbook"
alias av="ansible-vault"
alias d="docker"
alias dc="docker-compose"
alias k="kubectl"
alias kn="kubens"
alias kx="kubectx"
alias scode="sudo code --user-data-dir=/root"
alias setenv="source ~/venv/bin/activate"
alias pc="pre-commit"
alias clear_ssh="ssh-add -D"

# --- Misc --------------------------------------------------------------------
alias fuck='sudo $(fc -ln -1)'
alias gcmsg_timed='git commit -m "Update: $(date --rfc-email)"'
alias matrix="cmatrix -a -b -u 4 -C green -f"
alias myip="curl ifconfig.co"
alias password_ssh="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no"

bak () {
    cp -v $1 $1.orig
}

show_path () {
    echo "PATH var:"
    echo $PATH | tr ":" "\n" | nl
}

function brew_find_pkg {
    file_to_search="$@"

    for package in $(brew list); do
        brew ls $package | grep -E -q "/${file_to_search}$"
        if [ $? -eq 0 ]; then
            echo $package
            break
        fi
    done
}

terraform_targets() {
    # terraform plan | terraform-targets | grep 'some pattern' | xargs -r terraform apply -auto-approve
    sed 's/\x1b\[[0-9;]*m//g' | grep -o '# [^( ]* ' | grep '\.' | sed " s/^# /-target '/; s/ $/'/; "
}

terraform_targets_apply() {
    terraform plan | terraform-targets | grep ${1} | xargs -r terraform apply -auto-approve
}

ssh_ed25519_sk() {
    ssh-keygen -t ed25519-sk -O resident -O application=ssh:$1 -O verify-required -C "" -N "" -f "./${2}"
}

ssh_ed25519_backup() {
    ssh-keygen -t ed25519 -O resident -O application=ssh:backup -O verify-required -C "" -N "${1}" -f "./${2}"
}

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

# --- MacOS -------------------------------------------------------------------
alias clear_brew_cache="sudo rm -rf `brew --cache`"
alias flush_dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias icloud="cd '$HOME/Library/Mobile Documents/' || true"
alias macos_add_full_dockspace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}' && killall Dock"
alias macos_add_half_dock_space="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"small-spacer-tile\";}' && killall Dock"

macos_setup() {
    defaults write com.apple.Dock showhidden -bool TRUE && killall Dock
}
