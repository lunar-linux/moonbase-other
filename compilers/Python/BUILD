(
  
  unset CC CXX                                              &&
  patch_it $SOURCE_CACHE/$SOURCE2 0
  default_config                                            &&
  mkdir -p /usr/lib/python2.2                               &&
  cp -f $SOURCE_DIRECTORY/Tools/i18n/* /usr/lib/python2.2/  &&
  default_make

) > $C_FIFO 2>&1

