(

  TARGET=/usr/share/docbook-xsl
  
  prepare_install                 &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi                              &&
  
  cp -a * $TARGET
  
) > $C_FIFO 2>&1
