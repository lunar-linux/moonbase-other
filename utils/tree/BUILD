( 
   sedit "s:prefix = /usr/local:prefix = /usr:"	Makefile	&&
   sedit "s:/man/man1:/share/man/man1:" Makefile &&
	make	&&
   prepare_install &&
	make install

) > $C_FIFO 2>&1	
