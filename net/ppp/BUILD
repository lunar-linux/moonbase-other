sedit "s/usr\/man/usr\/share\/man/" linux/Makefile.top
default_build  &&
( 

  mkdir  -p  /etc/ppp/peers
  mkdir  -p  /etc/ppp/chat

  if ! [ -f /etc/resolv.conf ]; then
    ln  -f  /etc/ppp/resolv.conf /etc/resolv.conf
  fi

  cp  $SCRIPT_DIRECTORY/pon   /usr/bin
  cp  $SCRIPT_DIRECTORY/poff  /usr/bin

  if  !  [  -f                     /etc/ppp/options  ];  then
    cp  $SCRIPT_DIRECTORY/options  /etc/ppp/options
  fi

  if  [  !  -e                       /etc/ppp/peers/isp  ];  then
    cp  $SCRIPT_DIRECTORY/peers.isp  /etc/ppp/peers/isp
  fi

  if  [  !  -e                 /etc/ppp/chat/isp  ];  then
    cp  $SCRIPT_DIRECTORY/isp  /etc/ppp/chat/isp
  fi


  cat  $SCRIPT_DIRECTORY/message

  chown  root:ppp     /usr/sbin/pppd
  chmod  4750         /usr/sbin/pppd
  chown  -R root:ppp  /etc/ppp
  chmod  600          /etc/ppp/*-secrets

)
