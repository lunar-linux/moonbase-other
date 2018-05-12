OPTS+=" --disable-ldap \
        --disable-ldaps \
        --disable-versioned-symbols \
        --disable-manual \
        --enable-ipv6 \
        --enable-threaded-resolver \
        --without-gssapi \
        --without-libidn \
        --without-ssl \
        --with-gnutls=/usr \
        --with-ranom=/dev/urandom \
        --with-ca-bundle=/etc/ssl/certs/ca-certifictates.crt"

default_config &&
make -C lib &&
prepare_install &&
install -m0755 lib/.libs/libcurl.so.4.5.0 /usr/lib/libcurl-gnutls.so.4.5.0 &&
for i in 3 4 4.0.0 4.1.0 4.2.0 4.3.0 4.4.0; do
  ln -sf libcurl-gnutls.so.4.5.0 /usr/lib/libcurl-gnutls.so.${i}
done
