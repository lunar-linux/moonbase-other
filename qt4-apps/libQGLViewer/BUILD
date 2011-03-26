(

  cd QGLViewer &&
  qmake $OPTS  &&
  default_make &&
  
  cd $SOURCE_DIRECTORY/designerPlugin &&
  sedit "s:QMAKE_RPATH:QMAKE_LFLAGS_RPATH:g" designerPlugin.pro &&
  qmake &&
  default_make

) > $C_FIFO 2>&1
