 OPTS+=" --prefix=/usr \
         --sysconfdir=/etc"

./configure $OPTS &&
default_make &&

# Library, since the makefiles are still broken
make -C librhash install-lib-headers install-lib-shared install-so-link
