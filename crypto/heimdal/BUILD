(
  ./configure --prefix=/usr \
              --without-krb4 \
              --enable-shared \
              --enable-readline-dir=/usr \
              --enable-openssl=/usr \
              --includedir=/usr/include/heimdal \
	      $OPTS &&
  make	&&
  prepare_install &&
  make install &&
  (cd /usr/include/heimdal; ln -sf . include; ln -sf ../../lib .) &&
  echo
) > $C_FIFO 2>&1 
