(

  ./configure Linux --prefix=/usr -v --enable="arch-i686" &&
  sedit "s/CPP = cpp/CPP = c++/" manedit/Makefile &&
  default_make

) > $C_FIFO 2>&1
