(
   sedit "s:prefix?=/opt/diet:prefix=/opt/lunar/diet:" Makefile &&
   make  &&
   cp $SOURCE_DIRECTORY/bin-i386/diet /usr/bin/diet &&
   make install &&
   cp /opt/lunar/diet/man/man1/diet.1 /usr/share/man/man1
   
) > $C_FIFO 2>&1
