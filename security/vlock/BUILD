(

  ./configure  --prefix=/usr             \
               --enable-shadow           \
               $OPTS                    &&

  groupadd --force   \
           --system  \
           vlock    &&

  default_make

) > $C_FIFO 2>&1
