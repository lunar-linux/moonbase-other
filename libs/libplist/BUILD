
# The install phase gets confused if this is present
  rm -rf /usr/include/plist/cython &&

  ./configure --prefix=/usr &&

  make &&
  prepare_install &&
  make install

# Cython header and pxd does not get installed
  mkdir -p /usr/include/plist/cython &&
  cp cython/*.h cython/plist.pxd /usr/include/plist/cython/
