(

  ./configure --prefix=/usr   \
              $OPTS          &&
# it has some outdated document tags and this fixes some of them
  doxygen -u docs/docs.mak    &&
# end

# Its make process is rather brain dead, you have to specify something.
  make all        &&
  prepare_install &&
  make install
# end

) > $C_FIFO 2>&1
