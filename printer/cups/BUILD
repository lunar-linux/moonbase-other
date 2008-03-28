(

  default_config &&
  sedit "s:-Os -g -fstack-protector::" Makedefs &&
  default_make &&

  if [ -e /etc/init.d/cups ] ; then
    rm -f /etc/init.d/cups
  fi

) > $C_FIFO 2>&1
