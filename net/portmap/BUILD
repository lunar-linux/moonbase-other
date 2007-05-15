(
  
  # yes the double brackets are needed and NO quotes are needed in the following test!!!
  if [[ $OPTS == *--without-tcpwrappers* ]];  then
    sedit "s:\$(WRAP_DIR)/libwrap.a::" Makefile &&
    sedit "s:^HOSTS_ACCESS=:#HOSTS_ACCESS=:" Makefile
  fi &&
  sedit  "s/const char \*what/__const char \*what/"  portmap.c  &&
  
  make  WRAP_DIR=/usr/lib  &&
  prepare_install          &&
  cp  portmap    /sbin     &&
  cp  pmap_dump  /sbin     &&
  cp  pmap_set   /sbin     &&
  cp  $SCRIPT_DIRECTORY/init.d/portmap  /etc/init.d
  
) > $C_FIFO 2>&1
