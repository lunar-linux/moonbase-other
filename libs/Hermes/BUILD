(
  unset CC CXX LDFLAGS CFLAGS CXXFLAGS &&
  ln -sf /usr/share/automake/depcomp depcomp &&
  ./configure --prefix=/usr \
              --bindir=/usr/games &&
  rm -fr libtool && 
  ./ltconfig ltmain.sh &&
  make &&
  prepare_install &&
  make install
) > $C_FIFO 2>&1
