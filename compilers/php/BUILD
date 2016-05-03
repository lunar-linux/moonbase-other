EXTENSION_DIR=/usr/lib/php/modules &&
export EXTENSION_DIR &&

if [ "$USE_REGGLOBALS" == "y" ]; then
  OPTS+=" "
fi

OPTS+=" --sbindir=/usr/bin \
        --sysconfdir=/etc/php \
        --localstatedir=/var \
        --with-layout=GNU \
        --with-config-file-path=/etc/php \
        --with-config-file-scan-dir=/etc/php/conf.d \
        --disable-rpath \
        --enable-zend-signals" &&

OPTS+=" --enable-ftp=shared \
        --enable-zip=shared \
        --enable-dba=shared \
        --enable-exif=shared \
        --enable-intl=shared \
        --enable-bcmath=shared \
        --enable-sockets=shared \
        --enable-calendar=shared" &&

default_build
