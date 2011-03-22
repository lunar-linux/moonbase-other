(
  cd ./make/linux  &&

  sedit "s:/usr/local:/usr:" Makefile  &&
  sedit "s/all: staticlib sharedlib/all: sharedlib/g" Makefile &&
  sedit "s/install: install_staticlib install_sharedlib install_headers/install: install_sharedlib install_headers/g" Makefile &&

  default_make

) > $C_FIFO 2>&1
