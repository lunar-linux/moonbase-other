( 
  default_build &&

  if  [  !  -f  /etc/snort.conf  ];  then
    sed  "s/include /include snort\//"  etc/snort.conf  >  /etc/snort.conf
  fi

  mkdir  -p  /etc/snort
  mkdir  -p  /var/log/snort

  if  [  !  -f  /etc/snort/classification.config  ];  then
    cp  etc/classification.config  /etc/snort
  fi

  if  [  !  -f  /etc/snort/reference.config  ];  then
    cp etc/reference.config  /etc/snort
  fi

  cd rules &&
  for  FILE  in  `ls  *.rules`;  do
    if  [  !  -f  /etc/snort/$FILE  ];  then
      cp  $FILE   /etc/snort
    fi
  done
  cd $SOURCE_DIRECTORY &&

  if [ -e "/etc/init.d/snort.sh" ]; then
     rm -f /etc/init.d/snort.sh
     rm /etc/rc?.d/???snort.sh
  fi
  
  if [ ! -d /etc/config.d/snort/ ]; then
     mkdir -p /etc/config.d/snort/
  fi
   
  if [ -e /etc/snort.conf ]; then
     cp -f /etc/snort.conf /etc/snort.conf.bak
     echo "You should remove /etc/snort.conf.bak if you do not need it!"
  fi

  mkdir -p /etc/config.d/snort &&\

  if [ -e /etc/config.g/snort/snort.sysconfig ]; then
    cp -f /etc/config.d/snort/snort.sysconfig /etc/config.d/snort/snort.sysconfig.bk
    echo "You should remove /etc/config.d/snort/snot.sysconfig.bk if you do not need it!"
  fi

  cp $SCRIPT_DIRECTORY/config.d/snort.sysconfig /etc/config.d/snort 
   
) > $C_FIFO 2>&1
