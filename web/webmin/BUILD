(

  patch_it $SOURCE_CACHE/$SOURCE2 1                                       &&
  
  prepare_install           &&
  mkdir -p /var/webmin/html &&
  cp -a * /var/webmin/html  &&
  cd /var/webmin/html       &&
  ./setup.sh                &&
  if [ -f /etc/rc.d/init.d/webmin ] ; then
    rm -f /etc/rc.d/init.d/webmin
  fi

) > $C_FIFO 2>&1
