(

  KERNEL=`installed_version  linux`

  sedit "s/\$(shell uname -r)/$KERNEL/" ftpfs/Makefile

  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
