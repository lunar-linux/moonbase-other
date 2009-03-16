(

  prepare_install &&
  install -m 750 ddclient /usr/sbin/ddclient &&
  mkdir -p /etc/ddclient /var/cache/ddclient &&

  if [ ! -e /etc/ddclient/ddclient.conf ]; then
   install -m640  sample-etc_ddclient.conf /etc/ddclient/ddclient.conf
  fi &&
  if [ -e /etc/ddclient.conf ]; then
   echo "/etc/ddclient.conf has moved to /etc/ddclient/ddclient.conf. Please move your existing ddclient.conf."
  fi

) > $C_FIFO 2>&1 

