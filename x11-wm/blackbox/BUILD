(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&
  
  ./configure --build=$BUILD	\
	      --prefix=/usr	\
	      --sysconfdir=/etc	\
	      --disable-nls	\
	      $OPTS             &&
  default_make  &&
  
) > $C_FIFO 2>&1
