(

  qmake -recursive "PREFIX = /usr" $OPTS &&

  make &&

  prepare_install &&
  cp -f hupnp/bin/libHUpnp.so.0.8.0 /usr/lib/ &&
  ln -sf /usr/lib/libHUpnp.so.0.8.0 /usr/lib/libHUpnp.so.0.8 &&
  ln -sf /usr/lib/libHUpnp.so.0.8.0 /usr/lib/libHUpnp.so.0 &&
  ln -sf /usr/lib/libHUpnp.so.0.8.0 /usr/lib/libHUpnp.so &&
  cp -f hupnp/bin/libQtSolutions_SOAP-2.7.so /usr/lib/ &&
  ln -sf /usr/lib/libQtSolutions_SOAP-2.7.so /usr/lib/libQtSolutions_SOAP-2.7.so.1 &&
  ln -sf /usr/lib/libQtSolutions_SOAP-2.7.so /usr/lib/libQtSolutions_SOAP-2.7.so.1.0 &&
  ln -sf /usr/lib/libQtSolutions_SOAP-2.7.so /usr/lib/libQtSolutions_SOAP-2.7.so.1.0.0 &&  
  install -m 0755 hupnp/bin/HUpnpSimpleTestApp /usr/bin/ &&
  cp -Rf hupnp/include/* /usr/include/

) > $C_FIFO 2>&1
