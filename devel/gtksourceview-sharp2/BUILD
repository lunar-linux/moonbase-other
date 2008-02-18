(

  # The samples aren't installed anyhow, let's not waste time building
  # them (they were failing to build as well)
  sedit 's:gtksourceview sample doc:gtksourceview doc:' Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
