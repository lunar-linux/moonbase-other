(

  # Now lets do the PAM stuff the proper way
  if module_installed Linux-PAM; then
    OPTS="$OPTS --with-pam --without-shadow"
  fi

  # Enable gtk support
  OPTS="$OPTS --without-motif --with-gtk --with-xml --without-kerberos"

  # Enable locking abilities of xscreensaver
  OPTS="$OPTS --enable-locking"

  default_build  &&

  rm -fR /xscreensaver

) > $C_FIFO 2>&1
