OPTS+=" --disable-static" &&

default_build &&

sedit "/LIBCDIO_SOURCE_PATH/s|.*|/* #undef LIBCDIO_SOURCE_PATH */|" \
  /usr/include/cdio/cdio_config.h
