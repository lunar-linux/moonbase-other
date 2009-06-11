(

  #Something is wrong with their automake script
  #Check at the next version bump
  sedit 's:@MKINSTALLDIRS@:mkinstalldirs:g' po/Makefile.in.in

  #Please check if qtdemux is fixed at next version bump.
  #Doesn't compile with current gstreamer -- zmcgrew 06/11/2009

  OPTS="$OPTS  --disable-valgrind  \
               --disable-debug     \
	       --disable-qtdemux   \
	       --disable-examples"

  default_build

) > $C_FIFO 2>&1 
