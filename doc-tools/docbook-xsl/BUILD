(

  TARGET=/usr/share/xsl/docbook
  
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi                              &&
  
  cp -R VERSION common doc docsrc extensions fo html htmlhelp javahelp lib params profiling template tools xhtml $TARGET                   &&
  
  gather_docs 
  

) > $C_FIFO 2>&1
