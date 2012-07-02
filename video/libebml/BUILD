(

  cd ./make/linux  &&

  sedit "s:/usr/local:/usr:"                      Makefile &&
  sedit "s:ln -s:ln -fs:"                         Makefile &&
  sedit "s/all: staticlib/all:/g"                 Makefile &&
  sedit "s/install: install_staticlib/install:/g" Makefile &&

  default_make

) > $C_FIFO 2>&1
