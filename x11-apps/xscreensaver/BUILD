(

  # Now lets do the PAM stuff the proper way
  if module_installed Linux-PAM; then
    OPTS="$OPTS --with-pam --without-shadow"
  fi

  # Force disable of kerberos
  OPTS="$OPTS --without-kerberos"

  # Disable gtk support
  OPTS="$OPTS --with-xml"

  # Enable locking abilities of xscreensaver
  OPTS="$OPTS --enable-locking"
  
  default_build  &&

  rm -fR /xscreensaver

) > $C_FIFO 2>&1
