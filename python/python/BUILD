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
ln -sf /usr/bin/python3.`lvu version python | cut -f2 -d.` /usr/bin/python3 &&

if [[ $SYS_PYTHON == "y" ]]
then
    ln -sf /usr/bin/python3 /usr/bin/python
fi

# Some apps look for /usr/bin/python3-config
ln -sf /usr/bin/python3.`lvu version python | cut -f2 -d.`m-config /usr/bin/python3-config
