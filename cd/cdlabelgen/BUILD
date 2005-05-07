(

  # Make the Makefile put things where we want them
  sedit "s:BASE_DIR   = /usr/local:BASE_DIR   = /usr:g" Makefile &&
  sedit "s:LIB_DIR   = \$(BASE_DIR)/lib/cdlabelgen:LIB_DIR   =\$(BASE_DIR)/share/cdlabelgen:g" Makefile &&
  sedit "s:\$(INSTALL) cdlabelgen.1 \$(MAN_DIR)/man1:\$(INSTALL) cdlabelgen.1 \$(BASE_DIR)/share/man/man1:g" Makefile &&
  
  prepare_install  &&
  make install

) > $C_FIFO 2>&1
