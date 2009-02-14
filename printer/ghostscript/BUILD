(

  if module_installed libpaper ; then
     sedit "s:lpaper:llibpaper:g" configure
  fi &&

  export CFLAGS="$CFLAGS -fPIC"

  default_build  &&

  make install-so

) > $C_FIFO 2>&1

