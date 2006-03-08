(
  OPTS="$OPTS EXCLUDE=gnomevfs PREFIX=/usr MANDIR=/usr/share/man"
  scons $OPTS &&
  prepare_install &&
  scons $OPTS install
  
 ) > $C_FIFO 2>&1
