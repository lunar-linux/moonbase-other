(

  if [ "$AIRSNORT" == "y" ]; then
    patch -p0 < $SOURCE_CACHE/$SOURCE2
  fi		   &&

  patch -p0 < $SCRIPT_DIRECTORY/Configure.patch &&
  
  make clean       &&
  ./Configure -n --sysv --rcdir=/etc --srctree $OPTS &&
  make  all        &&
  prepare_install  &&
  make    install  &&
  cp -r $SOURCE_DIRECTORY/include/pcmcia /usr/include

) > $C_FIFO 2>&1
