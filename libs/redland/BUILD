(

  OPTS+=" --disable-static" &&

  if in_depends $MODULE libiodbc ; then
     LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/libiodbc"
  fi &&

  if in_depends $MODULE libxml2 ; then
    OPTS+=" --with-xml-parser=libxml"
  else
    OPTS+=" --with-xml-parser=expat"
  fi &&

  default_build

) > $C_FIFO 2>&1
