(

# So a lunar fix or lunar update will not report and attemp a relin;
#        libxul.so => not found                                                                
#        libxpcom.so => not found
 
  XULRUNNER_VER="`lvu version xulrunner`"                &&
  XULRUNNER_SO_PATH="/usr/lib/xulrunner-$XULRUNNER_VER/" &&
  LDFLAGS="$LDFLAGS -Wl,-rpath,${XULRUNNER_SO_PATH}"     &&

  prepare_install &&

  cd platform/gtk-x11 &&
  sedit 's/import bsddb.db/import bsddb3/' ../../portable/storedatabase.py &&
  sedit 's/import bsddb/import bsddb3/' ../../portable/dl_daemon/download.py &&
  python setup.py install --root=/

) > $C_FIFO 2>&1
