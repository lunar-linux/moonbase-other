unset  CFLAGS
unset  CXXFLAGS

(

  ./configure  --prefix=/usr               \
               --sysconfdir=/etc           \
               --localstatedir=/var        \
 	       --disable-ffmpeg	   	   \
               --enable-libmpeg2           \
               --disable-smb               \
               --disable-gtk               \
               --disable-qt                \
               --disable-kde               \
               --enable-x11                \
               --enable-skins              \
	       $OPTS                       &&
  make                                     &&
  prepare_install                          &&
  make    install                          
#  rm  -f   /usr/lib/libdvdcss.*            &&
#  rm  -rf  /usr/include/videolan

) > $C_FIFO 2>&1
