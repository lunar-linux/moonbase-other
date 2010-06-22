(
  
  cd scons-local && tar xf scons-local-0.96.90.tar.gz && cd .. &&
  scons prefix=$MODULE_PREFIX debug=no &&

  prepare_install &&
  scons install prefix=$MODULE_PREFIX &&

  gather_docs DEBUGGING TODO

) >$C_FIFO 2>&1
