(

  sedit "s:CFLAGS  = -Wall -O0 \$(DEBUG) \$(INCLUDE):CFLAGS  = -Wall $CFLAGS:g" Makefile &&
  rm -rf */CVS 
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
  	/usr/share/doc/pptp/Documentation
 
) > $C_FIFO 2>&1
