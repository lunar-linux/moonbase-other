(

  if [ "$INSTALL_EAW" == "y" ]; then
    set_module_config EAW y
  fi &&

  audio="oss"
  if in_depends $MODULE flac; then
    audio="${audio},flac"
  fi &&
  if in_depends $MODULE alsa-lib; then
    audio="${audio},alsa"
  fi &&
  if in_depends $MODULE libvorbis; then
    audio="${audio},vorbis"
  fi &&
  if in_depends $MODULE jack; then
    audio="${audio},jack"
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
  mkdir -p /usr/share/timidity &&
  install -m0664 $SOURCE_CACHE/$SOURCE2 /usr/share/timidity/timidity.cfg

) > $C_FIFO 2>&1
