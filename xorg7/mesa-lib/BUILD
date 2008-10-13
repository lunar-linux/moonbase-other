(
OPTS+="--with-dri-drivers="
#for driver in $MESADRIVER; do
#  echo $driver;
#  OPTS+="$driver,";
#done
OPTS+=$(echo $MESADRIVER | sed s/\ /,/g)





#  sedit 's,/usr/X11R6/lib/modules,/usr/lib,' configs/default &&
#  sedit 's,/usr/X11R6,/usr,g' configs/linux* configs/default &&
#  sedit 's,lib64,lib,g' configs/linux* configs/default &&
#  sedit 's,usr/local,usr,g' configs/linux* configs/default &&
#  sedit 's,lib/modules,lib,g' src/glx/x11/dri_glx.c &&
#  sedit 's,[-]g,,g' configs/default configs/linux-dri-x86 configs/linux-dri-x86-64 configs/linux-dri &&

#  case `arch` in
#    x86_64) CONF=linux-dri-x86-64 ;;
#    i?86)   CONF=linux-dri ;;
#    *)      exit 1 ;;
#  esac &&

#  make $CONF &&
  ./configure --prefix=/usr $OPTS && 
  #make -C progs/xdemos PROGS='glxinfo glxgears' &&

  prepare_install &&

  make && 

 make install                                                
  #install -v -m644 include/GLView.h /usr/include/        &&
  #install -v -m755 progs/xdemos/glxinfo progs/xdemos/glxgears /usr/bin

) > $C_FIFO 2>&1
