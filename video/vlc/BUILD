unset  CFLAGS
unset  CXXFLAGS

(

  ./configure  --prefix=/usr               \
               --sysconfdir=/etc           \
               --localstatedir=/var        \
 	       --disable-ffmpeg	   	   \
               --disable-libmpeg2          \
	       $OPTS                       &&
  make                                     &&
  prepare_install                          &&
  make    install                          
#  rm  -f   /usr/lib/libdvdcss.*            &&
#  rm  -rf  /usr/include/videolan

) > $C_FIFO 2>&1
