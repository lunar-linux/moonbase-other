(

  sedit "s:#include <sys/types.h>::" src/interface.c
  sedit "24i #include <sys/types.h>" src/interface.c
  default_build &&

  install -m0750 $SCRIPT_DIRECTORY/ifplugd-lunar.action /etc/ifplugd/ &&
  install -m0755 $SCRIPT_DIRECTORY/ifplugd /etc/init.d/

) > $C_FIFO 2>&1
