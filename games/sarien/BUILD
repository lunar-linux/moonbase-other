(

  default_config                      &&
  make                                &&

  prepare_install                     &&

  set -x                              &&

  cp bin/sarien /usr/bin              &&
  cp bin/sarien.info /usr/share/info  &&
  mkdir -p /usr/share/doc/sarien      &&
  cp doc/* /usr/share/doc/sarien      &&
  cp lib/*.a /usr/lib                 &&
  cp $SOURCE_CACHE/$SOURCE2 /etc

  set +x

) > $C_FIFO 2>&1
