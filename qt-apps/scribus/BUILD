(

  rm -f /usr/X11R6/include/zlib.h 
  sedit "s:<qpopupmenu.h>:<qpopupmenu.h>\n#include <unistd.h>:" scribus/page.h

  ./configure  --prefix=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                \
               $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
