(

  ./configure  CC='gcc' CFLAGS="$CFLAGS"	\
               --prefix=/usr             	\
               --infodir=/usr/share/info 	\
	       --mandir=/usr/share/man   	&&
  make                        &&
  prepare_install             &&
  make    install             
#  for  ITEM  in  `ls /usr/include/orbit-1.0`; do
#    rm    -rf  /usr/include/$ITEM
#    ln    -sf  /usr/include/orbit-1.0/$ITEM /usr/include/$ITEM
#  done

) > $C_FIFO 2>&1
