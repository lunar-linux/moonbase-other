autoreconf -fi &&

OPTS+=" --disable-static"

if module_installed vcdimager; then
  OPTS+=" --enable-vcd-info"
else
  OPTS+=" --disable-vcd-info"
fi

default_build &&

sedit "/LIBCDIO_SOURCE_PATH/s|.*|/* #undef LIBCDIO_SOURCE_PATH */|" \
  /usr/include/cdio/cdio_config.h
