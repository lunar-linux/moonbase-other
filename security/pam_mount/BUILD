(

  OPTS+=" --libdir=/lib"
  default_build &&
  [ -e /etc/security/pam_mount.conf ] || \
  install -m644 config/pam_mount.conf /etc/security/

) > $C_FIFO 2>&1  
