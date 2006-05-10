(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  for FILE in `find . -iname "Makefile"`
  do
    sedit "s:-I/usr/include$::" ${FILE}
    sedit "s:-I/usr/include ::" ${FILE}
    sedit "s:-I\$(includedir)::" ${FILE}
  done                                  && 
  default_make

) > $C_FIFO 2>&1
