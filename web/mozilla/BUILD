(
 OPTS=

  if [ "$GTK2" == "y" ] ; then 
    OPTS="--enable-gtk20"
  fi
  
  ./configure  --build=$BUILD               \
               --prefix=/usr	            \
	       $OPTS			    &&
  default_make

) > $C_FIFO 2>&1
