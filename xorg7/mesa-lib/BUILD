(

  sedit 's,/usr/X11R6/lib/modules,/usr/lib/X11/modules,' configs/default &&
  sedit 's,/usr/X11R6,/usr/X11,g' configs/linux* configs/default &&
  sedit 's,lib64,lib,g' configs/linux* configs/default &&
  sedit 's,usr/local,usr,g' configs/linux* configs/default &&
  sedit 's,lib/modules,lib/X11/modules,g' src/glx/x11/dri_glx.c &&

  case `arch` in
    x86_64) CONF=linux-dri-x86-64 ;;
    i?86)   CONF=linux-dri-x86 ;;
    *)      exit 1 ;;
  esac &&

  make $CONF && 
  make -C progs/xdemos PROGS='glxinfo glxgears' &&

  prepare_install &&

  make install						&&
  install -v -m644 include/GLView.h /usr/include/	&&
  install -v -m755 progs/xdemos/glxinfo progs/xdemos/glxgears /usr/bin

) > $C_FIFO 2>&1
