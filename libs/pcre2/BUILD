bad_flags ALL &&

OPTS+=" --enable-jit \
        --enable-utf8 \
        --enable-pcre2-16 \
        --enable-pcre2-32 \
        --enable-pcregrep-libz \
        --enable-pcregrep-libbz2 \
        --enable-unicode-properties \
        --enable-pcre2test-libreadline \
        --disable-static" &&

default_config &&

sedit 's:ln -s:ln -sf:' Makefile &&

# normal install of pcre
default_make
