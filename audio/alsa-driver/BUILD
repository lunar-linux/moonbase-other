(

#There a case or two that this could be "problematic"
#So let's just "force it our way" :)
#hvisage
  sedit "s/etc\/rc.d/etc/" Makefile
  # the following change is required to build rc3
  rm -f include/linux/isapnp.h               &&
#Still this is a VERY debatable test....
  modprobe  soundcore                        &&
  ./configure  --prefix=/usr                 \
               --with-isapnp=auto            \
               --with-sequencer=yes          \
               --with-oss=yes                \
               --with-debug=none             \
               --with-kernel=/usr/src/linux  \
               --with-cards=$CARD            &&
  make                                       &&
  prepare_install                            &&
  make    install                            &&
  ./snddevices                               &&
  #rm  -Rf  /dev/snd                          &&
  #ln  -sf  /devices/snd  /dev/snd            &&
  ln  -sf  ../init.d/alsasound  /etc/rcS.d/S99alsasound
 
) > $C_FIFO 2>&1
