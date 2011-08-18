(

  prepare_install &&
  install -m 750 ddclient /usr/sbin/ddclient &&
  mkdir -p /etc/ddclient /var/cache/ddclient &&

  if [ ! -e /etc/ddclient/ddclient.conf ]; then
    install -m 640 sample-etc_ddclient.conf /etc/ddclient/ddclient.conf
  fi &&
  if [ -e /etc/ddclient.conf ]; then
    message "${PROBLEM_COLOR}Please move /etc/ddclient.conf to /etc/ddclient/${DEFAULT_COLOR}"
  fi

) > $C_FIFO 2>&1
