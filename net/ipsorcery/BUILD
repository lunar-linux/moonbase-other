(
 set -x
  sedit "s/-g -O2/$CFLAGS $LDFLAGS/g" Makefile
  make gtk                       &&
  make clean                     &&
  prepare_install                &&
#  make gtk-install              &&
  cp  magic  /usr/bin/ipsorcery  &&
  chmod 755  /usr/bin/ipsorcery

) > $C_FIFO 2>&1
