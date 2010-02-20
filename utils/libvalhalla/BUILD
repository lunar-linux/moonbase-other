(

  if in_depends $MODULE ffmpeg ; then
   OPTS="--with-lavc=/usr/include"
  fi &&

  # configure does not like --build.
  ./configure --prefix=/usr     \
              $OPTS            &&

  default_make

) > $C_FIFO 2>&1
