(

  if [ `arch` == "x86_64" ] ; then
      CFLAGS="-fPIC" &&
      OPTS+=" --extra-cflags=-fPIC"
  fi &&

  if module_installed xulrunner ; then
    XUL_VER=`lvu version xulrunner` &&
    OPTS+=" --xulsdk-path=/usr/lib/xulrunner-devel-$XUL_VER/"
  fi &&

  chmod +x configure  &&

  OPTS+=" --mozdir=/opt/lunar/plugins --cpu=$CPU --strip"

  default_build       &&

  make install-lib

) > $C_FIFO 2>&1
