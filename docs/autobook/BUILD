(
 
  TITLE="GNU Autoconf, Automake, and Libtool"
  TARGET=$DOCUMENT_DIRECTORY/$MODULE
  
  prepare_install   &&
  mkdir -p  $TARGET &&
  cp *.html $TARGET &&
  cp *.png  $TARGET &&

  # Let the user know where they can find their book.
  message ""
  message "${MESSAGE_COLOR}The index page for your new book: \"$TITLE\""
  message "can be found at $TARGET/autobook.html${DEFAULT_COLOR}"
  message ""

) > $C_FIFO 2>&1  

