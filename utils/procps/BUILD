(
#the below is necessary for procps to compile with the new
#optimization code.
  unset BUILD                         &&
#
  sedit "s/top.desktop//" Makefile    &&
  make                                &&
  prepare_install                     &&
  make  -e XSCPT='' PROCDIR=/bin USRBINDIR=/bin DESTDIR=/ MANDIR=/usr/share/man install

  [ -s "/etc/sysctl.conf" ] || install -g 0 -o 0 -m 0600 $SCRIPT_DIRECTORY/sysctl.conf /etc

) > $C_FIFO 2>&1  &&  (

if [ -e /etc/init.d/sysctl.sh ]; then
   rm -f /etc/init.d/sysctl.sh
   rm -f /etc/rcS.d/S99sysctl
   cp  $SCRIPT_DIRECTORY/init.d/sysctl  /etc/init.d
   ln  -sf     ../init.d/sysctl  /etc/rcS.d/S99sysctl
else
  cp  $SCRIPT_DIRECTORY/init.d/sysctl  /etc/init.d
  ln  -sf     ../init.d/sysctl  /etc/rcS.d/S99sysctl
fi

)

