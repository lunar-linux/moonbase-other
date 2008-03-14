(
  mkdir -p $TMPDIR/$MODULE               &&
  default_config                         &&
  make                                   &&
  prepare_install                        &&
  make DESTDIR=$TMPDIR/$MODULE install   &&
  rm $TMPDIR/$MODULE/usr/include/event.h &&
  cp -r $TMPDIR/$MODULE/usr /            &&
  rm -r $TMPDIR/$MODULE 
) > $C_FIFO 2>&1
