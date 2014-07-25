(

  OPTS+=" --enable-static --with-xv-path=/usr/X11/lib --enable-mmap --enable-antialiasing --enable-vdpau"  &&

  cp $SOURCE_CACHE/$SOURCE2 src/xine-engine/  &&

   ./autogen.sh  &&

  default_build &&

  cp $SOURCE_CACHE/$SOURCE2 /usr/include/xine/

) > $C_FIFO 2>&1
