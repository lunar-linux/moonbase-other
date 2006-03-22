(

  if [ "$INSTALL_EAW" == "y" ]; then
    set_module_config EAW y
  fi &&

  audio="oss"
  if is_depends flac; then
    audio="${audio},flac"
  fi &&
  if is_depends alsa-lib; then
    audio="${audio},alsa"
  fi &&
  if is_depends libvorbis; then
    audio="${audio},vorbis"
  fi &&

  ./configure --prefix=/usr \
              --localstatedir=/var/state/timidity++ \
              --with-elf \
              --enable-audio=${audio} \
              --enable-server \
              --enable-network \
              --enable-dynamic \
              --enable-vt100 \
              --enable-spline=cubic \
              $OPTS &&

  default_make &&
  [ -d /usr/share/timidity ] || mkdir /usr/share/timidity &&
  install -m0664 $SOURCE_CACHE/$SOURCE2 /usr/share/timidity/timidity.cfg

) > $C_FIFO 2>&1
