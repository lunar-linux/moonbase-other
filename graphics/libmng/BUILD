(
  cat unmaintained/autogen.sh | tr -d \\r > autogen.sh &&
  chmod 755 autogen.sh &&
  ./autogen.sh --help > /dev/null &&
  OPTS+=" --enable-shared --enable-static --with-zlib --with-jpeg --with-lcms" &&
  default_build
) > $C_FIFO 2>&1
