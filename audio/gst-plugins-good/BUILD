(

  #Something is wrong with their automake script
  #Check at the next version bump
  sedit 's:@MKINSTALLDIRS@:mkinstalldirs:g' po/Makefile.in.in

  OPTS="$OPTS  --disable-valgrind  --disable-debug  --disable-examples"

  default_build

) > $C_FIFO 2>&1 
