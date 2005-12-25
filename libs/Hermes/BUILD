(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  unset CC CXX LDFLAGS CFLAGS CXXFLAGS  &&
  ln -sf /usr/share/automake/depcomp depcomp  &&
  ./configure --prefix=/usr         \
              --bindir=/usr/games  &&
  rm -fr libtool  && 
  ./ltconfig ltmain.sh  &&
  default_make 
  
) > $C_FIFO 2>&1
