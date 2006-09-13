(

  ./autogen.sh &&


  ./configure  --prefix=/usr   \
               $OPTS          &&

# This is needed to avoid an internal compiler error

  cd guicast   &&
  make CXXFLAGS='-O0 -g' bcpan.lo &&
  cd ..        &&

  default_make


) > $C_FIFO 2>&1
