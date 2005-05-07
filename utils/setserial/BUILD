sedit "s/\/usr\/man\/man8/\/usr\/share\/man\/man8/g" Makefile.in &&

default_build  &&

(

  cp  rc.serial  /etc/init.d/serial.sh

  ln  -sf  ../init.d/rc.serial.sh  /etc/rcS.d/S99serial
  ln  -sf  ../init.d/rc.serial.sh  /etc/rc0.d/K00serial
  ln  -sf  ../init.d/rc.serial.sh  /etc/rc6.d/K00serial

  if    [  !  -f         /etc/serial.conf  ]
  then  cp  serial.conf  /etc/serial.conf
  fi

)
