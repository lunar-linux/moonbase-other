# We have a libcurl-gnutls so no need to deal with gnutls here.
if in_depends $MODULE openssl || in_depends $MODULE libressl; then
  OPTS+=" --with-ssl --without-gnutls"
else
  OPTS+=" --without-ssl"
fi &&

OPTS+=" --disable-ldap \
        --disable-ldaps \
        --disable-versioned-symbols \
        --disable-manual \
        --enable-ipv6 \
        --enable-threaded-resolver \
        --with-libidn2 \
        --with-random=/dev/urandom \
        --with-ca-bundle=/etc/ssl/certs/ca-certifictates.crt"

default_config &&
make -C lib &&
prepare_install &&
install -m0755 lib/.libs/libcurl.so.4.7.0 /usr/lib/libcurl-compat.so.4.7.0 &&
for i in 3 4.0.0 4.1.0 4.2.0 4.3.0 4.4.0 4.5.0; do
  ln -sf libcurl-compat.so.4.7.0 /usr/lib/libcurl.so.${i}
done
