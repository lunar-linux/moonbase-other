(
  export LD_LIBRARY_PATH=/opt/lunar/qt/3/lib
  export PATH=/opt/lunar/qt/3/bin:/opt/lunar/kde/3/bin:$PATH
  export LD_RUN_PATH=/opt/lunar/kde/3/lib:/opt/lunar/kde/3/lib/kde3
  QTDIR=/opt/lunar/qt/3
  KDEDIR=/opt/lunar/kde/3

## java support ?
  if module_installed j2sdk; then
    OPTS="$OPTS --with-java=/usr/lib/j2sdk1.4.1"
  else
    OPTS="$OPTS --without-java"
  fi  &&

## fix problem with ccache
  CC=${CC//ccache/} &&
  CXX=${CXX//ccache/} &&
  export CC CXX       &&

  ./configure    --prefix=/opt/lunar/kde/3            \
                 --enable-final                       \
                 --disable-debug                      \
                 --with-qt-dir=/opt/lunar/qt/3        \
                 --with-xinerama                    \
                 $OPTS                                &&


  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
		   
