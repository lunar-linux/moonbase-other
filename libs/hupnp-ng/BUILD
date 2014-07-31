(

  sedit "s:PREFIX/lib:PREFIX/\$(get_libdir):" hupnp/lib/qtsoap-2.7-opensource/buildlib/buildlib.pro hupnp/src.pro hupnp_av/hupnp_av.pro &&
  qmake "PREFIX=/usr" "CONFIG+=DISABLE_TESTAPP" "CONFIG+=DISABLE_AVTESTAPP" $OPTS herqq.pro &&

  default_make
  
) > $C_FIFO 2>&1
