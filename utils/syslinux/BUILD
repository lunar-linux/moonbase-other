( 
  sedit "s/-malign/-falign/g" memdisk/Makefile &&
  default_make

) > $C_FIFO 2>&1  &&  (

  mkdir  -p     /var/lib/syslinux
  cp     *.bin  /var/lib/syslinux

)
