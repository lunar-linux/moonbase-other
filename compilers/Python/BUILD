(
  unset CC CXX                                              &&
  default_config                                            &&
  mkdir -p /usr/lib/python2.3                               &&
  cp -f $SOURCE_DIRECTORY/Tools/i18n/* /usr/lib/python2.3/  &&
  default_make                                              &&
  mkdir -p $DOCUMENT_DIRECTORY/Python  &&
  cp -a Misc $DOCUMENT_DIRECTORY/Python

) > $C_FIFO 2>&1

