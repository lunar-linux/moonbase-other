(

  CFLAGS="$CFLAGS -I/usr/include/libcapplet1" &&
  ./configure  --prefix=/usr                \
               --localstatedir=/var         \
               --sysconfdir=/etc            &&
  for FILE in `find . -iname "Makefile"`
  do
    sedit "s:-I/usr/include$::" ${FILE}
    sedit "s:-I/usr/include ::" ${FILE}
    sedit "s:-I\$(includedir)::" ${FILE}
  done                                      && 
  make                                      &&
  prepare_install                           &&
  make    install

) > $C_FIFO 2>&1
