OPTS+=" --enable-shared \
        --disable-static \
        --with-zlib \
        --with-md5   \
        --with-dav \
        --with-expat \
        --with-extension \
        --without-ssl"

# --as-needed bug in library order
sedit "/^LDADD =/ s:\(../src/libwwwfile.la\):\1 ../src/libwwwdir.la ../src/libwwwhtml.la:" Library/Examples/Makefile.in &&

sedit "s:/lib/mysql/:/lib/:g" configure  &&
sedit "s/(char\ \*)//g" Library/src/HTMethod.c  &&
sedit "s:SSL_library_init:OPENSSL_init_ssl:" configure &&

default_build
