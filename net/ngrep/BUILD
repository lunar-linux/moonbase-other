(

  sedit "s/\/man\/man8/\/share\0/" Makefile.in
  OPTS+=" --with-pcap-includes=/usr/include/pcap"
  touch *
  default_build
 
) > $C_FIFO 2>&1
