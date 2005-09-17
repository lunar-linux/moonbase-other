(
  if [ $BYTECODE == "y" ] ; then
    message "${RED}ENABLED!!!!${DEFAULT_COLOR}"
    sed -i -r 's:.*(#.*BYTE.*) .*:\1:' \
       include/freetype/config/ftoption.h
  fi &&

  ./configure --prefix=/usr &&
  default_make

) > $C_FIFO 2>&1
