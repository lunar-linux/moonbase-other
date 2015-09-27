CFLAGS+=" -lm" &&

autoconf &&

OPTS+=" --disable-schemas-install \
        --disable-gestures \
        --disable-mono \
        --disable-vv" &&

default_build &&

# Remove GConf schema file
rm /etc/gconf/schemas/purple.schemas
