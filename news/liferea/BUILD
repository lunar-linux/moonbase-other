(

# added this hack to fix liferea-1.0.14, Makefile fails in /doc. This should be removed later!!!
  sedit "s/SUBDIRS = doc/SUBDIRS = /" Makefile.am Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
