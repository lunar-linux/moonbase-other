(

  DBTARGET=/usr/share/xml/slides-$VERSION           &&
  cd $SOURCE_DIRECTORY                             &&
  
  prepare_install                                  &&
  if [ ! -d $DBTARGET ]; then
     mkdir -p $DBTARGET
  fi                                               &&
  cp -a * $DBTARGET

) > $C_FIFO 2>&1
