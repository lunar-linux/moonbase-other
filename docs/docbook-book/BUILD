(
 
  TITLE="Docbook: The Definitive Guide"
  TARGET=$DOCUMENT_DIRECTORY/$MODULE
  
  prepare_install                                              &&
  mkdir -p             $TARGET                                 &&
  cp    -r  tdg/en/*   $TARGET                                 &&

  # Let the user know where they can find their book.
  message ""
  message "${MESSAGE_COLOR}The index page for your new reference: \"$TITLE\""
  message "can be found at $TARGET/html/docbook.html${DEFAULT_COLOR}"
  message ""

) > $C_FIFO 2>&1  

