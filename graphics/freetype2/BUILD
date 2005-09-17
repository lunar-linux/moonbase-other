(
  if [ $BYTECODE == "y" ] ; then
    sed -i -r 's:.*(#.*BYTE.*) .*:\1:' \
       include/freetype/config/ftoption.h
  fi &&

  ./configure --prefix=/usr &&
  default_make

) > $C_FIFO 2>&1
