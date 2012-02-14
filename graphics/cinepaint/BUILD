(

  sh autogen.sh &&

  LDFALGS+=" -lm" &&
  CFLAGS+=" -lm" &&

  if module_installed Python ; then
   OPTS+=" --enable-pygimp --with-python=/usr/bin/python"
  fi &&

  OPTS+=" --enable-gtk2" &&

  default_build 

) > $C_FIFO 2>&1
