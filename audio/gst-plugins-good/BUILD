(

  #Something is wrong with their automake script
  #Check at the next version bump
  sedit 's:@MKINSTALLDIRS@:mkinstalldirs:g' po/Makefile.in.in &&

  OPTS="$OPTS  --disable-valgrind  --disable-debug  --disable-examples" &&

  default_config &&

  sedit "s:usrbin:usr/bin:g" gst/deinterlace/Makefile gst/videobox/Makefile gst/videomixer/Makefile &&

  default_make

) > $C_FIFO 2>&1 
