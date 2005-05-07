(

  ./configure -nonstop      \
              -prefix=/usr  \
              -lang=en      \
              $OPTS         &&
  make                      &&
  prepare_install           &&
  make    install

) > $C_FIFO 2>&1
