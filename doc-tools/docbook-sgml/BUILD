(
  #clean-up broken previous install if it exists
  if [ -d /usr/share/xml ]; then
     rm -Rf /usr/share/xml
  fi                                            &&

  TARGET=/usr/share/docbook-sgml
 
  cd $SOURCE_DIRECTORY                          &&
  prepare_install                               &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi                                            &&
 
  cp -a * $TARGET
  
) > $C_FIFO 2>&1
