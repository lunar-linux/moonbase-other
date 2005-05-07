(
  
  bzcat $SCRIPT_DIRECTORY/netkit-telnet.patch.bz2 | patch -p1
  sedit "s/MANDIR=\"\$PREFIX\/man/MANDIR=\"\$PREFIX\/share\/man/" configure
  ./configure  --prefix=/usr  &&
  default_make

) > $C_FIFO 2>&1
