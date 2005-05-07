(

  if  [  !  -h  /usr/include/db3  ];  then
    ln  -s  .   /usr/include/db3
  fi

  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        &&
  for FILE in `find . -iname "Makefile"`
  do
    sedit "s:-I/usr/include$::" ${FILE}
    sedit "s:-I/usr/include ::" ${FILE}
    sedit "s:-I\$(includedir)::" ${FILE}
  done                                  && 
  make                                  &&
  prepare_install                       &&
  make    install                       &&
  if  [  !  -f  /etc/gconf/1/path  ];  then
    mv  /etc/gconf/1/path.example  /etc/gconf/1/path
  fi

) > $C_FIFO 2>&1
