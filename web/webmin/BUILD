(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  mkdir -p /var/webmin/html &&
  prepare_install           &&
  cp -a * /var/webmin/html  &&
  cd /var/webmin/html       &&

  ./setup.sh                &&
  if [ -f /etc/rc.d/init.d/webmin ] ; then
    rm -f /etc/rc.d/init.d/webmin
  fi

) > $C_FIFO 2>&1
