(

  if [ `arch` == "x86_64" ] ; then
    OPTS="--enable-m64-build"
   else
    OPTS="--enable-m32-build"
  fi &&

# threads are automatic with enabled smp support
  if [ "$USE_SMP" == "n" ]; then
    OPTS+=" --disable-smp-support --enable-threads"
   else
    OPTS+=" --enable-smp-support --enable-threads"
  fi &&

  default_build

) > $C_FIFO 2>&1
