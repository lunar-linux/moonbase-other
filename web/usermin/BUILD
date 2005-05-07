(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  
  prepare_install            &&
  mkdir -p /var/usermin/html &&
  cp -a * /var/usermin/html  &&
  cd /var/usermin/html       &&
  ./setup.sh                 &&

  if [ -f /etc/rc.d/init.d/usermin ] ; then
    rm -f /etc/rc.d/init.d/usermin
  fi

) > $C_FIFO 2>&1
