(

  if [ -e "/etc/init.d/xinetd.sh" ]; then
    rm -f /etc/init.d/xinetd.sh /etc/rc?.d/???xinetd.sh
  fi

  default_config &&
  make &&
  prepare_install &&
  mkdir -p /var/log/xinetd /etc/xinetd &&
  make install &&
  if [ ! -f /etc/xinetd.conf ]; then
    echo "includedir /etc/xinetd.d" > /etc/xinetd.conf
  fi

) > $C_FIFO 2>&1
