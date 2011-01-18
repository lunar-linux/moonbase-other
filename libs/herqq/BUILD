(

  qmake -recursive "PREFIX = /usr" $OPTS &&

  make &&

  prepare_install &&
  mkdir -p /usr/lib/$MODULE && mkdir -p /usr/include/$MODULE &&
  cp -f hupnp/bin/libHUpnp.so.0.8.0 /usr/lib/$MODULE/ &&
  ln -sf /usr/lib/$MODULE/libHUpnp.so.0.8.0 /usr/lib/$MODULE/libHUpnp.so.0.8 &&
  ln -sf /usr/lib/$MODULE/libHUpnp.so.0.8.0 /usr/lib/$MODULE/libHUpnp.so.0 &&
  ln -sf /usr/lib/$MODULE/libHUpnp.so.0.8.0 /usr/lib/$MODULE/libHUpnp.so &&
  install -m 0755 hupnp/bin/HUpnpSimpleTestApp /usr/bin/ &&
  cp -Rf hupnp/include/* /usr/include/$MODULE/

) > $C_FIFO 2>&1
