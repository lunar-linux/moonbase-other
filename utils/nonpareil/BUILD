(
  
  cd scons-local && tar xf scons-local-0.96.90.tar.gz && cd .. &&
  scons-local/scons.py prefix=/usr debug=no &&
  prepare_install &&
  scons-local/scons.py  install prefix=/usr &&
  gather_docs DEBUGGING TODO

) >$C_FIFO 2>&1
