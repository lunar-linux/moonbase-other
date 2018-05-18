OPTS+=" --enable-shared \
        --with-threads \
        --without-ensurepip" &&

# Makes sure shipped expat is not used when we want system expat
if in_depends $MODULE expat; then
  rm -fr Modules/expat
fi &&

# Makes sure shipped libffi stuff is not used when we want system libffi
if in_depends $MODULE libffi ; then
  rm -fr Modules/_ctypes/libffi*
fi &&

default_config &&

# This is important, lets 2.x versions and it to coexist.
make &&
prepare_install &&
make altinstall &&

# libixion (libreoffice-bin) need this
ln -sf /usr/lib/pkgconfig/python-3.6.pc /usr/lib/pkgconfig/python3.pc &&

# Till Python 3 based apps catch up we need a symlink from python3.3 to python3
ln -sf /usr/bin/python3.`lvu version Python-3 | cut -c 1` /usr/bin/python3 &&

# Some apps look for /usr/bin/python3-config
ln -sf /usr/bin/python3.`lvu version Python-3 | cut -c 1`m-config /usr/bin/python3-config
