(
  make all                             &&
  prepare_install                      &&
  make install                         &&
  cp $SOURCE_CACHE/$SOURCE2 /sbin/     &&
  cp $SOURCE_CACHE/$SOURCE3 /etc/      &&
  chmod 700 /sbin/chpax /sbin/chpax.sh &&
  chmod 600 /etc/chpax.cfg
  
) > $C_FIFO 2>&1
