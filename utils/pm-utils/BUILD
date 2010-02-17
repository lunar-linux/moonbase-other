(

  # Do not fail build if symlink already exist
  sedit 's/ln -s/ln -sf/g' man/Makefile.* src/Makefile.* &&
  default_build

) > $C_FIFO 2>&1
