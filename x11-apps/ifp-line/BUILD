(

  export INSTALL=/usr/bin/install 
 
  make PREFIX=/usr &&
	prepare_install &&
  make PREFIX=/usr install &&
  ./nonroot.sh 

) > $C_FIFO 2>&1
