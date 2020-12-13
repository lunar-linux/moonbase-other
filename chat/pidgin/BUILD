CFLAGS+=" -lm" &&

OPTS+=" --disable-schemas-install \
        --disable-gestures \
        --disable-mono"

default_build &&

# Remove GConf schema file
if [ -f /etc/gconf/schemas/purple.schemas ]; then
  rm -f /etc/gconf/schemas/purple.schemas
fi
