export PYTHONDONTWRITEBYTECODE=1 &&

touch INSTALL &&

autoreconf -i &&

OPTS+=" --without-python --with-python3" &&
default_config &&

# The Python binding links against the in-tree libtool library.  Build it,
# but install only the Python subdirectory so ownership stays with volume_key.
make -C lib &&

make -C python/python3 &&

prepare_install &&

make -C python/python3 install
