(
 export QTDIR=/opt/lunar/qt/3 
 export KDEDIR=/opt/lunar/kde/3 
 
 export PATH=$QTDIR/bin:/$KDEDIR/bin:$PATH
 

  ## fix problem with ccache
#  CC=${CC//ccache/} &&
#  CXX=${CXX//ccache/} &&
#  export CC CXX       &&

  ./configure    --prefix=$KDEDIR                      \
                 --enable-final                        \
                 --disable-debug                       \
                 --with-qt-dir=$QTDIR                  \
                 --with-xinerama                       \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
		   
