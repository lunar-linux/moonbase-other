(

  DBTARGET="/usr/share/doc/docbook-dsssl-doc"      &&
  cd $SOURCE_DIRECTORY                             &&
  
  prepare_install                                  &&
  if [ -d $DBTARGET ]; then
     mkdir -p $DBTARGET
  fi                                               &&
  cp -a doc     $DBTARGET                          &&
  cp -a docsrc  $DBTARGET
  

) > $C_FIFO 2>&1
