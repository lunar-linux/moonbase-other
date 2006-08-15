( 
  #Removing a mistake I made
  centralized=/etc/xml/catalog &&
  /usr/bin/install-catalog --remove $centralized /usr/share/xml/slides-$VERSION/xcatalog 
 
  DBTARGET=/usr/share/xml/slides-$VERSION           &&
  cd $SOURCE_DIRECTORY                             &&

  prepare_install                                  &&
  if [ ! -d $DBTARGET ]; then
     mkdir -p $DBTARGET
  fi                                               &&
  cp -a * $DBTARGET

) > $C_FIFO 2>&1
