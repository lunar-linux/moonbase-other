(
  default_config &&
  sedit "s/--mode=link \$(CCLD)/--mode=link \$(CXXLD)/g" Makefile &&
  default_make

) > $C_FIFO 2>&1
