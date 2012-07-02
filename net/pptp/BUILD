(

  sedit "s:CFLAGS  = -Wall -O0 \$(DEBUG) \$(INCLUDE):CFLAGS  = -Wall $CFLAGS:g" Makefile  &&
  default_make  &&
  mkdir -p /usr/share/doc/pptp/Reference   /usr/share/doc/pptp/Documentation  &&
  install -g 0 -o 0 -m 644 Documentation/* /usr/share/doc/pptp/Documentation
 
) > $C_FIFO 2>&1
