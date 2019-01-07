if ! in_depends $MODULE pulseaudio; then
  MAKE_ARGS="PULSE=0"
fi &&

make $MAKE_ARGS
prepare_install &&
make install
