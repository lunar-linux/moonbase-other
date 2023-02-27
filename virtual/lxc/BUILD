OPTS+=" -Dapparmor=false -Dexamples=false -Dman=false -Dtests=false" &&

if module_installed systemd; then
   OPTS+=" -Dinit-script=systemd \
           -Dsystemd-unitdir=/usr/lib/systemd/system"
fi &&

default_meson_build
