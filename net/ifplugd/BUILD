(

  sedit 's:/sbin/ifup:/etc/init.d/network start:' conf/ifplugd.action &&
  sedit 's:/sbin/ifdown:/etc/init.d/network stop:' conf/ifplugd.action &&
  default_build

) > $C_FIFO 2>&1
