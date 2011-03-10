(

  # Disable debug and add some boost hints to help the compile along
  OPTS+=" --disable-profile --disable-debug     \
              --with-boost-filesystem=gcc41-1_34_1  \
              --with-boost-regex=gcc41-1_34_1       \
              --with-boost-iostreams=gcc41-1_34_1"
  export CXXFLAGS="$CXXFLAGS -I/usr/include/boost-1_34_1"

  default_build  &&

  # drop the firefox plugin (handler for lastfm:// URIs) on the
  # filesystem for now.  Maybe later I'll get more fancy
  gather_docs xpi/bmp.xpi

) > $C_FIFO 2>&1
