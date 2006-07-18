(

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:/usr/X11/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3

  rm -f /usr/X11R6/include/zlib.h 
  sedit "s:<qpopupmenu.h>:<qpopupmenu.h>\n#include <unistd.h>:" scribus/page.h

  HAS_SCRIPTING_SUPPORT=false
  if  module_installed  boost;  then
    if  in_depends  boost  Python;  then
      HAS_SCRIPTING_SUPPORT=true
    fi
  fi
  if [ "$HAS_SCRIPTING_SUPPORT" == "false" ];  then
    message "${MODULE_COLOR}scribus${CYAN} will be compiled without Python scripting support."
    message "To enable this feature, please build ${MODULE_COLOR}boost${CYAN} with Python bindings.${DEFAULT_COLOR}"
  fi

  ./configure  --prefix=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                \
               $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
