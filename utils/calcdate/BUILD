(
  # setup all the necessary paths
  MODPATH=$MOONBASE/utils/$MODULE                  &&
  SHARELOC=/usr/share/doc/calcdate                 &&
  PREFIX=/usr                                      &&
  BINDIR=$PREFIX/bin                               &&
  
  # begin build
  prepare_install                                  &&
  gcc calcdate.c -o calcdate                       &&
  mv calcdate $BINDIR                              &&
  chmod 0755 $BINDIR/$MODULE                       &&
  chown root.root $BINDIR/$MODULE                  &&

  # setup the docs                       
  mkdir -p $SHARELOC                               &&
  cp $MODPATH/calcdate.c $MODPATH/README $SHARELOC 

) > $C_FIFO 2>&1
