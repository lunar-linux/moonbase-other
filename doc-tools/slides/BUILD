(

  DBTARGET="/usr/share/xml/slides-3.0.0"           &&
  cd $SOURCE_DIRECTORY                             &&
  
  prepare_install                                  &&
  if [ ! -d $DBTARGET ]; then
     mkdir -p $DBTARGET
  fi                                               &&
  cp -a * $DBTARGET

) > $C_FIFO 2>&1
