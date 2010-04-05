(

  ARCH=`arch` &&
  
  if [ "$ARCH" == "x86_64" ] ; then
    OPTS="--enable-m64-build"
   else
    OPTS="--enable-m32-build"
  fi &&

# threads are automatic with enabled smp support
  if [ "$USE_SMP" == "n" ]; then
    OPTS="$OPTS --disable-smp-support --enable-threads"
   else
    OPTS="$OPTS --enable-smp-support --enable-threads"
  fi &&

  ./configure   --prefix=/usr  \
                $OPTS         &&

  default_make


) > $C_FIFO 2>&1
