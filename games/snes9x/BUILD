pushd gtk &&
  OPTS+=" -Ddebugger=false \
          -Doss=false \
          -Dappdatadir=/usr/share/games/snes9x"
  default_meson_build &&
  mkdir -p /usr/games &&
  mv -f /usr/bin/snes9x-gtk /usr/games/ &&
popd &&

pushd unix &&
  OPTS=" --prefix=/usr \
         --bindir=/usr/games \
         --datadir=/usr/share/games \
         --enable-netplay"
  ./configure $OPTS &&
  make &&
  install -Dm 755 snes9x -t /usr/games/ &&
  install -Dm 644 ../docs/{control-inputs.txt,controls.txt,snapshots.txt} -t /usr/share/doc/snes9x
popd
