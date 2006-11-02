(

  ./configure  --build=$BUILD  \
               --prefix=/usr   \
               $OPTS           &&

  default_make  &&

  ln  -sf  flex  /usr/bin/lex

) > $C_FIFO 2>&1
