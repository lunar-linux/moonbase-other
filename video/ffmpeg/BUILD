(
  ./configure --prefix=/usr    \
              --enable-gpl     \
	      --enable-shared  \
              $OPTS           &&
  default_make                &&
  make installlib

) > $C_FIFO 2>&1
