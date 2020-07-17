sedit 's:m}+:m}=:g' tools/90-libgpod.rules.in &&

sed -e 's|libplist >= 1.0|libplist-2.0 >= 2.2|' -i configure.ac # support libplist 2.2 &&
autoreconf -vi &&

if module_installed systemd ; then
   OPTS+=" --with-udev-dir=/usr/lib/udev/"
fi &&

default_build
