(

  OPTS+=" --without-tcl \
          --with-smime \
          --without-passfile \
          --with-system-pinerc=/etc/alpine.d/pine.conf \
          --with-system-fixed-pinerc=/etc/alpine.d/pine.conf.fixed \
          --with-ssl-certs-dir=/etc/ssl/certs"

  patch_it $SOURCE2 1 &&

  default_build

) > $C_FIFO 2>&1
