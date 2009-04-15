(
  if is_depends libpng; then
    OPTS+=" --with-png"
  fi

  if is_depends timidity++; then
    OPTS+=" --with-midi=/usr/bin/timidity"
  fi

  ./configure \
    --prefix-dir=/usr \
    --with-sdl \
    --with-zlib \
    --with-freetype \
    --with-fontconfig \
    $OPTS &&

  default_make &&
  gather_docs docs changelog.txt readme.txt

) > $C_FIFO 2>&1
