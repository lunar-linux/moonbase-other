(
  QTDIR=/opt/lunar/qt/3
  KDEDIR=/opt/lunar/kde/3 

  export LD_LIBRARY_PATH=$QTDIR/lib
  export PATH=$QTDIR/bin:$KDEDIR/bin:$PATH
  export LD_RUN_PATH=$KDEDIR/lib:$KDEDIR/lib/kde3
 

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

  if module_installed NVIDIA_GLX ; then
    mv /usr/X11R6/include/GL/glx.h /usr/X11R6/include/GL/glx.NVIDIA &&
    cp $SCRIPT_DIRECTORY/glx.h /usr/X11R6/include/GL/ 
  fi                   &&
  make                 &&
  prepare_install      &&
  make install         

  if [ -e /usr/X11R6/include/GL/glx.NVIDIA ]; then
   mv /usr/X11R6/include/GL/glx.NVIDIA /usr/X11R6/include/GL/glx.h
  fi
) > $C_FIFO 2>&1
		   
