bad_flags ALL &&

OPTS+=" --enable-jit \
        --enable-pcre2-16 \
        --enable-pcre2-32 \
        --enable-pcre2grep-libz \
        --enable-pcre2grep-libbz2 \
        --enable-pcre2test-libreadline \
        --disable-static"

default_config &&

sedit 's:ln -s:ln -sf:' Makefile &&

# normal install of pcre
default_make
