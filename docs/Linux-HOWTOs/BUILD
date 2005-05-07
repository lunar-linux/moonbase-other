(

  prepare_install   
  mkdir -p     $DOCUMENT_DIRECTORY/$MODULE
  # This rm -f is necessary to properly clean up /usr/share/doc/Linux-HOWTOs/
  # especially on Lunar boxes where gzip, and bzip2 are statically linked binaries
  rm -f $DOCUMENT_DIRECTORY/$MODULE/*.gz
  cp     *     $DOCUMENT_DIRECTORY/$MODULE
  for FILE in `ls $DOCUMENT_DIRECTORY/$MODULE/`
  do
     [ -f "$DOCUMENT_DIRECTORY/$MODULE/$FILE" ] && 
     gzip -f9 $DOCUMENT_DIRECTORY/$MODULE/$FILE
  done

) > $C_FIFO 2>&1  

