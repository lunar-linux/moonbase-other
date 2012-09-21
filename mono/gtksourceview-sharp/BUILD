(

  sedit "s:gtksourceview-1.0:gtksourceview-2.0:"  configure.in  configure  &&

  # disable sample subdir: errors with PrintJob/PrintDialog kill build
  sedit "s:view sample doc:view doc:"  Makefile.am Makefile.in &&

  default_build
 
) > $C_FIFO 2>&1
