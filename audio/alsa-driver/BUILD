(

  # Look for sound support in kernel
  if [ -f /usr/src/linux/.config ]; then
        CONFIG_SOUND=$(grep "CONFIG_SOUND=" "/usr/src/linux/.config")
  else
        CONFIG_SOUND=$(grep "CONFIG_SOUND=" "${CONFIG_CACHE}/.config")
  fi &&

  #There a case or two that this could be "problematic"
  #So let's just "force it our way" :)
  #hvisage
  sedit "s/etc\/rc.d/etc/" Makefile
  # the following change is required to build rc3
  rm -f include/linux/isapnp.h               &&

  # Load soundcore if needed, fail if no sound support found
  case "${CONFIG_SOUND#*=}" in
      m)  modprobe soundcore ;;
      y)  true ;;
      *)  echo "*** No sound support found in kernel ***"; false ;;
  esac                                       &&

  ./configure  --prefix=/usr                 \
               --with-isapnp=auto            \
               --with-sequencer=yes          \
               --with-oss=yes                \
               --with-pcm-oss-plugins=yes    \
               --with-debug=none             \
               --with-kernel=/usr/src/linux  \
               --with-cards=$CARD            &&
  # Correct the path to awk which is hardcoded in a script
  sedit "s:/usr/bin/awk:/bin/awk:" utils/convert_isapnp_ids &&

  make                                       &&
  prepare_install                            &&
  make    install                            &&
  #rm  -Rf  /dev/snd                          &&
  #ln  -sf  /devices/snd  /dev/snd            &&
  ln  -sf  ../init.d/alsasound  /etc/rcS.d/S99alsasound &&
  if ! module_installed devfsd ; then
     ./snddevices
  fi

) > $C_FIFO 2>&1
