OPTS+=" --sbindir=/usr/bin \
        --libdir=/usr/lib \
        --disable-static"

default_config &&

sedit 's:/lib/security:/usr/lib/security:' Makefile &&

default_make
