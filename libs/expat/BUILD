(

  OPTS+=" --disable-static" &&

  # Fix DoS bug - http://expat.cvs.sourceforge.net/viewvc/expat/expat/lib/xmltok_impl.c?r1=1.15&view=log
  patch_it $SOURCE2 0 &&

  sedit "s/\/man\/man1/\/share\/man\/man1/g" Makefile.in &&

  default_build &&

  # Let's be naughty and do the coverup
  ln -sf /usr/lib/libexpat.so /usr/lib/libexpat.so.0

) > $C_FIFO 2>&1
