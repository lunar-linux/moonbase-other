(

  if ! [ -d /var/empty ]; then
    mkdir -p /var/empty
    chown root:sys /var/empty
    chmod 755 /var/empty
  fi                                                                     &&

  add_priv_user sshd:sshd                                                &&

  OPTS=$OPTS" --sysconfdir=/etc/ssh --with-md5-passwords"                &&
  default_build                                                          &&
  if [ ! -f /etc/ssh/Makefile ] ; then
    install -m644 $SCRIPT_DIRECTORY/Makefile /etc/ssh/Makefile
  fi

) > $C_FIFO 2>&1
