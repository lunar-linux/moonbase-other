(

 
  bzcat $SCRIPT_DIRECTORY/paragui.patch.bz2  | patch -p1  &&
  ./configure  --prefix=/usr        \
               --mandir=/usr/share  \
               --bindir=/usr/games  &&
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
