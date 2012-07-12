(

  if [ -f /var/phpMyAdmin/config.inc.php ]; then
    cp /var/phpMyAdmin/config.inc.php /tmp/config.inc.php
  fi  &&
  
  prepare_install          &&
  mkdir -p /var/${MODULE}  &&
  cp -av * /var/${MODULE}/

  if [ -f /tmp/config.inc.php ]; then
    cp /var/phpMyAdmin/config.inc.php /var/phpMyAdmin/config.inc.php.old  &&
    cp /tmp/config.inc.php /var/phpMyAdmin/config.inc.php  &&
    rm /tmp/config.inc.php
  fi
 
) > $C_FIFO 2>&1
