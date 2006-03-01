(

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:/usr/X11/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3

  rm -f /usr/X11R6/include/zlib.h 
  sedit "s:<qpopupmenu.h>:<qpopupmenu.h>\n#include <unistd.h>:" scribus/page.h

  ./configure  --prefix=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                \
               $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
