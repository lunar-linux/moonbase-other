(

  cd $SOURCE_DIRECTORY                                   &&
  tar zxf $MODULE-linux-1.1.0.tar.gz                     &&
  cd $MODULE-linux-1.1.0                                 &&
  sedit 's/pptp-linux/pptp/g' debian/pptp.8              &&
  sedit 's/CFLAGS  = -Wall -O1 $(DEBUG) $(INCLUDE)//g' Makefile &&
  make                                                   &&
  
  prepare_install                                        &&
  
  mkdir -p /usr/share/doc/pptp/Reference \
  	/usr/share/doc/pptp/Documentation

  install -g ppp -o 0 -m 755 pptp /usr/sbin/pptp         &&
  install -g 0 -o 0 -m 644 AUTHORS COPYING INSTALL \
	NEWS README TODO USING /usr/share/doc/pptp       &&
  install -g 0 -o 0 -m 644 Reference/* \
  	/usr/share/doc/pptp/Reference                    &&
  install -g 0 -o 0 -m 644 Documentation/* \
  	/usr/share/doc/pptp/Documentation                &&
  install -g 0 -o 0 -m 644 debian/pptp.8 \
        /usr/share/man/man8				 &&
  if [ ! -f /etc/ppp/options.pptp ] ; then
    install -g ppp -o 0 -m 640 ../options.pptp /etc/ppp
  fi
 
) > $C_FIFO 2>&1
