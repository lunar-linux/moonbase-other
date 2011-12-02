(

  OPTS+=" --enable-shared --enable-eps --enable-netcdf=/usr --disable-update" &&

  if [ `arch` == "x86_64" ] ; then 
      OPTS+=" --enable-64"
    else
      OPTS+=" --disable-64"
  fi &&

# So lunar fix does not bark about some octave shared objects not found.
  if in_depends $MODULE octave ; then
     LDFLAGS+=" $LDFLAGS -Wl,-rpath,/usr/lib/octave/`lvu version octave`"
  fi &&

  default_build

) > $C_FIFO 2>&1
