(

  OPTS+=" --disable-static" &&

  sedit "s:cp gl/stdint.h idn-int.h;:sed -e s/include_next/include/ gl/stdint.h > idn-int.h;:" lib/Makefile.am &&

  default_build

) > $C_FIFO 2>&1

