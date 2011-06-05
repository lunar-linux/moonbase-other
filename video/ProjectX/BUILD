(

  NDIR=/opt/ProjectX                                              &&
  sh build.sh                                                     &&
  prepare_install                                                 &&
  install -d -m 755 $NDIR/                                        &&
  install -d -m 755 $NDIR/lib                                     &&
  install -m 644 ProjectX.jar $NDIR/                              &&
  install -m 644 lib/commons-net-1.3.0.jar $NDIR/lib/             &&
  install -m 644 lib/jakarta-oro-2.0.8.jar $NDIR/lib/             &&
  install -m 644 resources/*.properties $NDIR/                    &&
  gather_docs ReadM*.txt ReleaseNotes*.txt lib/*.txt

) > $C_FIFO 2>&1
