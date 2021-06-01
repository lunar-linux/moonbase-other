EXTENSION_DIR=/usr/lib/php/modules &&
export EXTENSION_DIR &&

if [ "$USE_REGGLOBALS" == "y" ]; then
  OPTS+=" "
fi

OPTS+=" 
        --sbindir=/usr/bin \
        --sysconfdir=/etc/php \
        --localstatedir=/var \
        --with-layout=GNU \
        --with-config-file-path=/etc/php \
        --with-config-file-scan-dir=/etc/php/conf.d \
        --disable-rpath \
        --with-system-ciphers \
        --with-external-pcre \
        --with-pear=no \
        --with-zlib" &&

default_build
