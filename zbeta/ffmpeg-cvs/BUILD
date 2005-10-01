(

  ./configure --prefix=/usr      \
              --enable-gpl       \
	      --enable-shared    \
              --enable-pp        \
              --enable-shared-pp \
              $OPTS              &&

  default_make                
#  make installlib

) > $C_FIFO 2>&1
