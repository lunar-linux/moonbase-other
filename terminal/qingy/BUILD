(
  
  OPTS+=" --sbindir=/sbin --disable-optimizations"

  default_build  &&

  # an admin could set up autologin, don't need everyone to see the password
  chmod 0600 /etc/qingy/settings  &&

  # create the deafault temp directory
  mkdir -p /var/lib/misc

) > $C_FIFO 2>&1
