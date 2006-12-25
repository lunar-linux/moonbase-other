(
  cd $SOURCE_DIRECTORY/
  gcc -o dcraw -O4 dcraw.c -lm -ljpeg -llcms  

  prepare_install              &&
  cp -a dcraw	/usr/bin       &&
  cp -a dcraw.1 /usr/man/man1/

) > $C_FIFO 2>&1
