(

#  export DESTDIR="lib" &&
 # export DLLDESTDIR="bin" &&

  # build assistant_adp
  cd tools/assistant/compat &&
  qmake QT_SOURCE_TREE="../../../" &&
  default_make &&

  # build libQtAssistantClient
  cd lib &&
#  sedit "s:#include <QtAssistant/:#include <:" qassistantclient.h &&
  sedit 's:assistant_headers.files = \$\$SYNCQT.HEADER_FILES \$\$SYNCQT.HEADER_CLASSES:assistant_headers.files = qassistantclient.h qassistantclient_global.h:' lib.pro &&
  qmake QT_SOURCE_TREE="../../../.." QT_BUILD_TREE="../../../.." CONFIG="create_prl" QMAKE_CXXFLAGS="-I../../../../include" &&

  default_make 

) > $C_FIFO 2>&1
