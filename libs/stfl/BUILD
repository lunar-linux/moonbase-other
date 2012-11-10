(

  sedit 's:export prefix ?= /usr/local:export prefix ?= /usr:g' Makefile.cfg &&

  if ! in_depends $MODULE swig; then
    sedit 's:FOUND_SWIG = .*:FOUND_SWIG = 0:' Makefile.cfg
  fi &&

  default_make

) > $C_FIFO 2>&1
