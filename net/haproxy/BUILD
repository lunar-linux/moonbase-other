make -j ${MAKES:-1} \
	TARGET=linux.glibc \
	USE_OPENSSL=1 \
	USE_QUIC=1 \
	USE_QUIC_OPENSSL_COMPAT=1 \
	$OPTS &&

prepare_install &&

make install PREFIX=/usr DOCDIR=/usr/share/doc/$MODULE
