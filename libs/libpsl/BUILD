OPTS+=" --disable-static \
        --disable-dependency-tracking \
        --enable-man \
        --enable-builtin=libidn2 \
        --enable-runtime=libidn2 \
        --with-psl-file=/usr/share/publicsuffix/effective_tld_names.dat \
        --with-psl-testfile=/usr/share/publicsuffix/test_psl.txt"

default_config &&
LC_CTYPE=en_US.UTF-8 make &&
prepare_install &&
make install
