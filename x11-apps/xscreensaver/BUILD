(

  # Now lets do the PAM stuff the proper way
  if module_installed Linux-PAM; then
    OPTS="$OPTS --with-pam --without-shadow"
  fi

  # Enable gtk support
  OPTS="$OPTS --without-motif --with-gtk --with-xml --without-kerberos"

  # Enable locking abilities of xscreensaver
  OPTS="$OPTS --enable-locking"

  default_build

  # KDE seems to enjoy having this symlink
  #if module_installed "kde3" ; then
  #  ln -s /usr/share/control-center-2.0/screensavers /usr/lib/xscreensaver/config
  #fi

) > $C_FIFO 2>&1
