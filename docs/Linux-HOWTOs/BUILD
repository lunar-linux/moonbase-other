(

  prepare_install   
  mkdir -p     $DOCUMENT_DIRECTORY/$MODULE
  cp     *     $DOCUMENT_DIRECTORY/$MODULE
  for FILE in `ls $DOCUMENT_DIRECTORY/$MODULE/`
  do
     [ -f "$DOCUMENT_DIRECTORY/$MODULE/$FILE" ] && 
     gzip -f9 $DOCUMENT_DIRECTORY/$MODULE/$FILE
  done

) > $C_FIFO 2>&1  

