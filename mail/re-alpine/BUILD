OPTS+=" --without-tcl \
        --with-smime \
        --without-passfile \
        --with-system-pinerc=/etc/alpine.d/pine.conf \
        --with-system-fixed-pinerc=/etc/alpine.d/pine.conf.fixed \
        --with-ssl-certs-dir=/etc/ssl/certs" &&

if module_installed Linux-PAM; then
  export LIBS+=" -lpam"
fi &&

export LIBS+=" -lcrypt -lcrypto" &&

default_build
