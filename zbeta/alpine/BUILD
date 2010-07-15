(

  OPTS+=" --without-tcl \
          --with-smime \
          --without-passfile \
          --with-system-pinerc=/etc/pine.conf \
          --with-system-fixed-pinerc=/etc/pine.conf.fixed \
          --with-ssl-certs-dir=/etc/ssl/certs"

  patch_it $SOURCE2 1 &&
  if module_installed Linux-PAM; then
    patch_it $SOURCE3 1
  fi &&
  patch_it $SOURCE4 1 &&

  default_build

) > $C_FIFO 2>&1
