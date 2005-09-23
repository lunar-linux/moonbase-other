(

  # this edit fixes a metaflac option name change in flac-1.1.1
  sedit "s/import-vc-from/import-tags-from/" abcde &&
  export DESTDIR=""
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/abcde &&
  cp -a TODO changelog $DOCUMENT_DIRECTORY/abcde/
 
) > $C_FIFO 2>&1
