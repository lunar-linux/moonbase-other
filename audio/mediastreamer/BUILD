CFLAGS+=" -Wno-error" &&

OPTS+=" --disable-gsm \
        --enable-video \
        --disable-static \
        --disable-tests \
        --disable-strict" &&

default_config &&

# Fixes a make failure related to its confusion about some paths. (still needed).
find . -name Makefile -print0 | xargs -0 sed -i -e 's:-Iyes/:-I/:g' \
                                                -e 's:-Lyes/:-L/:g' \
                                                -e 's:-Lno/:-L/:g'  \
                                                -e 's:-Ino/:-I/:g'  &&

default_make
