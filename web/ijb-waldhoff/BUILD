(
    
  make                                               &&
  prepare_install                                    &&
  mkdir  -p              /var/log/junkbuster         &&
  mkdir  -p              /etc/junkbuster             &&
  mkdir  -p          $DOCUMENT_DIRECTORY/junkbuster  &&
  install -s -m 755 junkbuster /usr/sbin/junkbuster  &&
  cp  -f  junkbuster.1   /usr/man/man8/junkbuster.8  &&
  cp  -f  ijbman.html $DOCUMENT_DIRECTORY/junkbuster &&
  cp  -f  ijbfaq.html $DOCUMENT_DIRECTORY/junkbuster

) > $C_FIFO 2>&1  &&  (

  ETC="/etc/junkbuster"

  for file in blocklist imagelist cookiefile saclfile.ini \
      	      config forward strust.ini
  do
  [  -f  $ETC/$file  ]  ||  cp  $file  $ETC
  done

  [  -f     /etc/init.d/junkbuster.sh  ]  ||
  cp  $SCRIPT_DIRECTORY/junkbuster.sh  /etc/init.d

  ln     -sf  ../init.d/junkbuster.sh  /etc/rc3.d/S40junkbuster
  ln     -sf  ../init.d/junkbuster.sh  /etc/rc4.d/S40junkbuster
  ln     -sf  ../init.d/junkbuster.sh  /etc/rc5.d/S40junkbuster

  ln     -sf  ../init.d/junkbuster.sh  /etc/rc0.d/K60junkbuster
  ln     -sf  ../init.d/junkbuster.sh  /etc/rc1.d/K60junkbuster
  ln     -sf  ../init.d/junkbuster.sh  /etc/rc2.d/K60junkbuster
  ln     -sf  ../init.d/junkbuster.sh  /etc/rc6.d/K60junkbuster

)
