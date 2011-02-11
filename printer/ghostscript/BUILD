(

  ./autogen.sh  &&

  if module_installed libpaper ; then
     sedit "s:lpaper:llibpaper:g" configure
  fi  &&

  if module_installed jasper ; then
     rm -fr jasper
  fi  &&

  export CFLAGS="$CFLAGS -fPIC"  &&

  default_build  &&

  make install-so

) > $C_FIFO 2>&1
