(
  TITLE="Docbook: The Definitive Guide"
  TARGET=$DOCUMENT_DIRECTORY/$MODULE             
  prepare_install                                              &&
  mkdir -p             $TARGET                                 &&
  cp    -r  tdg/en/*   $TARGET                                 &&
  echo "The index page for your new reference: $TITLE is $TARGET/html/docbook.html."

) > $C_FIFO 2>&1  

