(
  add_priv_user bind:bind

  default_build  &&

  if module_installed systemd; then
    mkdir -p /run/named
    chown bind:bind /run/named
  fi

) > $C_FIFO 2>&1
