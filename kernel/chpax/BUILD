(
  make all                             &&
  prepare_install                      &&
  make install                         &&
  cp $SOURCE_CACHE/$SOURCE2 /sbin/     &&

  if [ -e /etc/$SOURCE3 ]; then
    echo "Config file installation skipped..."
  else
    cp $SOURCE_CACHE/$SOURCE3 /etc/
  fi

  chmod 700 /sbin/chpax /sbin/chpax.sh &&
  chmod 600 /etc/chpax.cfg
  
) > $C_FIFO 2>&1
