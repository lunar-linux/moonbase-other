(

  cd generate/unix &&
  if [ `arch` == "x86_64" ] ; then
     make BITS=64
  else
     make BITS=32
  fi &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
