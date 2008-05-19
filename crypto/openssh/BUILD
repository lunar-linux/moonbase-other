(

  # don't allow root login by default
  sedit 's/#PermitRootLogin yes/PermitRootLogin no/' sshd_config         &&
  
  if ! [ -d /var/empty ]; then
    mkdir -p /var/empty
    chown root:sys /var/empty
    chmod 755 /var/empty
  fi                                                                     &&

  add_priv_user sshd:sshd                                                &&

  if echo $OPTS | grep -q -- "--with-kerberos5="; then
    patch_it $SOURCE2 1
#    if [[ "$KEX" == "y" ]]; then 
#        patch_it $SOURCE3 0
#    fi
  fi &&

  OPTS=$OPTS" --sysconfdir=/etc/ssh --with-md5-passwords"                &&
  default_build                                                          &&
  if [ ! -f /etc/ssh/Makefile ] ; then
    install -m644 $SCRIPT_DIRECTORY/Makefile /etc/ssh/Makefile
  fi

) > $C_FIFO 2>&1
