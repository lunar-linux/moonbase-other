(

  sed -i "62i #include <X11/Xmd.h>" src/arch/unix/x11/xaw/x11video.c &&
  sed -i "63i #include <X11/extensions/shmproto.h>" src/arch/unix/x11/xaw/x11video.c &&

  OPTS+=" --enable-fullscreen" &&

  default_build

) > $C_FIFO 2>&1
