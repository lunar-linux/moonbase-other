(
  patch_it $SCRIPT_DIRECTORY/libpng.patch 0 	&&
  set -x
  autoconf					&&
  ./configure  --prefix=/usr         		\
               --localstatedir=/var  		\
               --sysconfdir=/etc     		&&
  set +x
  default_make

) > $C_FIFO 2>&1
