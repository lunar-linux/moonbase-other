(

  # Clean up some wrong/hardcoded values in the Makefile
  sedit  "s:/usr/local:/usr:g"  Makefile                  &&
  sedit  "s:OPTS \:= -O2:OPTS \:= \$(CFLAGS):"  Makefile  &&
  # Fix for ai_flags bug since whois 4.7.15
  sedit '/#define _GNU_SOURCE/d' whois.c

  default_make  &&
  install -m0644 whois.conf /etc/whois.conf

) > $C_FIFO 2>&1
