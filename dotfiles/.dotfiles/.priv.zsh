#    ██████╗ ██████╗ ██╗██╗   ██╗   ███████╗███████╗██╗  ██╗
#    ██╔══██╗██╔══██╗██║██║   ██║   ╚══███╔╝██╔════╝██║  ██║
#    ██████╔╝██████╔╝██║██║   ██║     ███╔╝ ███████╗███████║
#    ██╔═══╝ ██╔══██╗██║╚██╗ ██╔╝    ███╔╝  ╚════██║██╔══██║
# ██╗██║     ██║  ██║██║ ╚████╔╝ ██╗███████╗███████║██║  ██║
# ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.priv.zsh

### DOT EXPANDER
qc-rationalize-dot() {
  if [[ $LBUFFER == *.. ]] {
    LBUFFER+='/..'
  } else {
    LBUFFER+='.'
  }
}
zle -N qc-rationalize-dot
### END DOT EXPANDER

### MACOS
alias clear_brew_cache="sudo rm -rf `brew --cache`"
alias flush_dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias icloud="cd '$HOME/Library/Mobile Documents/' || true"
alias macos_add_full_dockspace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}' && killall Dock"
alias macos_add_half_dock_space="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"small-spacer-tile\";}' && killall Dock"

macos_create_blank_space_on_dock() {
  defaults write com.apple.Dock showhidden -bool TRUE && killall Dock
}
### END MACOS

### PLUS
alias mkdir+="mkdir -p -v"
alias cp+="cp -rfiv"
alias df+="df -h"
alias du+="du -c -h"
alias rm+="rm -rfiv"
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
### END PLUS

### GENERAL
alias omp="oh-my-posh"
alias ll="eza \
  --long \
  --header \
  --group \
  --group-directories-first \
  --octal-permissions \
   --git \
  -a"
alias get_public_key="ssh-keygen -y -f"
alias check_tunnels="sudo lsof -i -n | grep \"IPv4\" | egrep '\<ssh\>'"
alias ducks='du -cks -- * | sort -rn | head'
alias root="sudo -s"
alias swapcls='sudo swapoff -a && sudo swapon -a'
alias test_color="msgcat --color=test"
alias fman="compgen -c | fzf | xargs man"
### END GENERAL

### GIT
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh
# ! TODO: add FZF plugins

function git_current_branch() {
  local ref
  ref=$(git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

alias gdf="git diff -U0 --word-diff"
alias glgf="glgs --follow -U0 --word-diff -p"
alias glgs="git log --pretty=\"format:%C(yellow)%h %Creset| %Cblue%ar - %aD %Creset| %Cgreen%aE %Creset|%Cred%d %Creset%s%n\" --abbrev=12 --graph --full-history --stat"
alias glgs1="git log --pretty=\"format:%C(yellow)%h %Creset| %Cblue%ar %Creset| %Cgreen%aE %Creset|%Cred%d %Creset%s\" --abbrev=12"
alias glgs2="git log --pretty=\"format:%C(yellow)%h %Creset| %Cblue%ar %Creset| %Cgreen%aE %Creset|%Cred%d %Creset%s%n\" --abbrev=12 -U0 -p --word-diff"
alias gss="git submodule status"

alias gaa='git add --all'
alias gsb='git status --short --branch'
alias ggpush='git push origin "$(git_current_branch)"'
alias ggpull='git pull origin "$(git_current_branch)"'
alias gfa='git fetch --all --tags --prune --jobs=10'

git_squash () {
  git reset $(git merge-base $1 $(git rev-parse --abbrev-ref HEAD))
  git add -A
  git commit -m "${2}"
}
### END GIT

### TOOLING
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
### END Tooling

### MISC
# --- Misc --------------------------------------------------------------------
alias fuck='sudo $(fc -ln -1)'
alias gcmsg_timed='git commit -m "Update: $(date --rfc-email)"'
alias matrix="cmatrix -a -b -u 4 -C green -f"
alias myip="curl ifconfig.co"
alias password_ssh="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no"

bak() {
  cp -v $1 $1.orig
}

show_path() {
  echo "PATH var:"
  echo $PATH | tr ":" "\n" | nl
}

brew_find_pkg() {
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
### END MISC

### ZELLIJ
zell() {
  ZJ_SESSIONS=$(zellij list-sessions --no-formatting)
  NO_SESSIONS=$(echo "${ZJ_SESSIONS}" | wc -l)

  if [[ -z "$ZELLIJ" ]]; then
    if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
      if [ "${NO_SESSIONS}" -ge 1 ]; then
        zellij attach \
        "$(echo "${ZJ_SESSIONS}" | fzf | cut -d ' ' -f 1)"
      else
        zellij attach -c
      fi
      # zellij attach -c
    else
      zellij
    fi

    if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
      exit
    fi
  fi
}
### END ZELLIJ
