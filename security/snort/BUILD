default_build  &&(

  if  [  !  -f  /etc/snort.conf  ];  then
    sed  "s/include /include snort\//"  snort.conf  >  /etc/snort.conf
  fi

  mkdir  -p  /etc/snort
  mkdir  -p  /var/log/snort

  if  [  !  -f  /etc/snort/classification.config  ];  then
    cp  classification.config  /etc/snort
  fi

  for  FILE  in  `ls  *.rules`;  do
    if  [  !  -f  /etc/snort/$FILE  ];  then
      cp  $FILE   /etc/snort
    fi
  done

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
   
  if [ -e /etc/config.d/snort/snort.sysconfig ]; then
     cp /etc/config.d/snort/snort.sysconfig cp /etc/config.d/snort/snort.sysconfig.bak
     cp $SCRIPT_DIRECTORY/snort.sysconfig /etc/config.d/snort/
  fi

)
