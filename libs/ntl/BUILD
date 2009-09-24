(

  cd src  &&

  ./configure PREFIX=/usr      \
              NTL_STD_CXX=on   \
              NTL_GMP_LIP=on   \
              SHARED=on        \
              $OPTS           &&

  default_make

) > $C_FIFO 2>&1
