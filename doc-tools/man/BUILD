(

  cat $SCRIPT_DIRECTORY/whatis.patch | patch -p1 &&
  ./configure  -d  &&
  make             &&
  prepare_install  &&
  make    install  &&
  sedit 's/\/usr\/bin\/less -is$/\/usr\/bin\/less -isR/g' /usr/share/misc/man.conf

) > $C_FIFO 2>&1
