(
  export PATH=/opt/lunar/qt/3/bin:/opt/lunar/kde/3/bin:$PATH
  export KDEDIR=/opt/lunar/kde/3

  ## fix problem with ccache
  CC=${CC//ccache/} &&
  CXX=${CXX//ccache/} &&
  export CC CXX       &&

  ./configure    --prefix=/opt/lunar/kde/3             \
                 --enable-final                        \
                 --disable-debug                       \
                 --with-qt-dir=/opt/lunar/qt/3         \
                 --with-xinerama                     \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
		   
