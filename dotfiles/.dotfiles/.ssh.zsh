### SSH
# ssh.yk5c.<serial>.ed25519.sk.<name>.[prv/pub]
ssh_ed25519_sk() {
  if [[ ! ykman ]]; then
    echo "Please install ykman"
    return 1
  fi

  if [[ ! ${2} ]]; then
    echo "Please provide a key serial and name."
    echo "Usage: ssh_ed25519_sk <serial> <key_name>"
    return 1
  fi

  if [[ $(ykman -d "${1}" info) ]]; then
    ssh-keygen -t ed25519-sk -O application=ssh:${2} -O resident -O verify-required -C "" -N "" -f "./ssh.yk5c.${1}.ed25519.sk.${2}" -a $(seq 3 64 | sort -R | head -n 1)
    mv ssh.yk5c.${1}.ed25519.sk.${2} ssh.yk5c.${1}.ed25519.sk.${2}.prv
  else
    echo "No Yubikey found"
    return 1
  fi
}

# ssh.yk5c.<serial>.ed25519.sk.<name>.[prv/pub]
ssh_ed25519_sk_yk5c_25567588() {
  if [[ ! ${1} ]]; then
    echo "Please provide a key name."
    echo "Usage: ssh_ed25519_sk_yk5c_25567588 <key_name>"
    return 1
  fi

  ssh_ed25519_sk 25567588 $@
}

# ssh.ed25519.<name>.[prv/pub]
ssh_ed25519() {
  if [[ ! ${1} ]]; then
    echo "Please provide a key name."
    echo "Usage: ssh_ed25519 <key_name>"
    return 1
  fi

  ssh-keygen -t ed25519 -O application=ssh:${1} -C "" -N "" -f "./ssh.ed25519.${1}" -a $(seq 3 64 | sort -R | head -n 1)
  mv ssh.ed25519.${1} ssh.ed25519.${1}.prv
}

# ssh.ed25519.pw.<name>.[prv/pub]
ssh_ed25519_password() {
  if [[ ! ${1} ]]; then
    echo "Please provide a key name."
    echo "Usage: ssh_ed25519_password <key_name>"
    return 1
  fi

  echo -n "Enter password for ${1}: \n"
  read -s password
  ssh-keygen -t ed25519 -O application=ssh:${1} -C "" -N "${password}" -f "./ssh.ed25519.pw.${1}" -a $(seq 3 64 | sort -R | head -n 1)
  mv ssh.ed25519.pw.${1} ssh.ed25519.pw.${1}.prv
}
### END SSH
