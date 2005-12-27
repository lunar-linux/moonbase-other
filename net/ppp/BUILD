(

	if [ $WITH_MPPE == "y" ]; then
	  cp $SOURCE_CACHE/$SOURCE2 $SOURCE_DIRECTORY/
          gunzip $SOURCE2
	  patch_it $PATCHNAME 1
	fi

	sedit "s/FILTER=y/#FILTER=y/"       pppd/Makefile.linux  &&
	sedit "s/usr\/man/usr\/share\/man/" linux/Makefile.top   &&

	default_build  &&
	
	mkdir  -p  /etc/ppp/peers  &&
	mkdir  -p  /etc/ppp/chat  &&

	if ! [ -f /etc/resolv.conf ]; then
		ln  -f  /etc/ppp/resolv.conf /etc/resolv.conf
  	fi

	cp  $SCRIPT_DIRECTORY/pon   /usr/bin  &&
	cp  $SCRIPT_DIRECTORY/poff  /usr/bin  &&

	if  !  [  -f                     /etc/ppp/options  ];  then
		cp  $SCRIPT_DIRECTORY/options  /etc/ppp/options
  	fi

	if  [  !  -e                       /etc/ppp/peers/isp  ];  then
		cp  $SCRIPT_DIRECTORY/peers /etc/ppp/peers/isp
  	fi

	if  [  !  -e                 /etc/ppp/chat/isp  ];  then
		cp  $SCRIPT_DIRECTORY/isp  /etc/ppp/chat/isp
	fi

	cat  $SCRIPT_DIRECTORY/message  &&

        groupadd ppp        2>/dev/null     &&
	chown  root:ppp     /usr/sbin/pppd  &&
	chmod  4750         /usr/sbin/pppd  &&
	chown  -R root:ppp  /etc/ppp  &&
	touch               /etc/ppp/{chap,pap}-secrets &&
	chmod  600          /etc/ppp/*-secrets

) > $C_FIFO 2>&1
