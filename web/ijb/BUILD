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

  [  -f  $ETC/junkbstr.ini  ]  ||  cp  junkbstr.ini  $ETC
  [  -f  $ETC/sblock.ini    ]  ||  cp  sblock.ini    $ETC
  [  -f  $ETC/scookie.ini   ]  ||  cp  scookie.ini   $ETC
  [  -f  $ETC/saclfile.ini  ]  ||  cp  saclfile.ini  $ETC
  [  -f  $ETC/sforward.ini  ]  ||  cp  sforward.ini  $ETC
  [  -f  $ETC/strust.ini    ]  ||  cp  strust.ini    $ETC
   

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
