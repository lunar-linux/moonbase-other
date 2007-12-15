(

  sedit s@for\ BC\ in\ \"-gcc\"@for\ BC\ in\ \"-gcc42\"@g configure  &&

  ./configure  --prefix=/usr      \
               --disable-desktop  \
               $OPTS             &&

  default_make
 
) > $C_FIFO 2>&1
