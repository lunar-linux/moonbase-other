(

  ./configure  --prefix=/usr                \
               --sysconfdir=/etc            \
               --localstatedir=/var $OPTS  &&

  default_make  &&

  if [ "$STATIC" == "y" ]; then
    make clean &&
    make static &&
    make install-static
  fi

) > $C_FIFO 2>&1
