(

  cd $SOURCE_DIRECTORY                         &&
  prepare_install                              &&
  mkdir -p /usr/lib/netscape                   &&
  mkdir -p /usr/lib/netscape/plugins           &&
  mkdir -p /usr/lib/mozilla                    &&
  mkdir -p /usr/lib/mozilla/plugins            &&
  cp *.class *.so /usr/lib/netscape/plugins    &&
  cp *.class *.so /usr/lib/mozilla/plugins

) > $C_FIFO 2>&1
