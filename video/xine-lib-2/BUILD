(

  OPTS+=" --enable-static --with-xv-path=/usr/X11/lib --enable-mmap --enable-antialiasing --enable-vdpau"  &&

  cp $SCRIPT_DIRECTORY/accel_vaapi.h src/xine-engine/  &&

   ./autogen.sh  &&

  default_build

) > $C_FIFO 2>&1
