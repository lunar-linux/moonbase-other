CFLAGS+=" -lm" &&

autoconf &&

OPTS+=" --disable-schemas-install \
        --disable-gestures \
        --disable-mono \
        --disable-vv" &&

default_build &&

# Remove GConf schema file
if [ -f /etc/gconf/schemas/purple.schemas ]; then
  rm /etc/gconf/schemas/purple.schemas
fi