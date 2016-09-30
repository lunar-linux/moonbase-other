PYTHON_VER="$(installed_version Python-3 | cut -d. -f1)" &&

if in_depends $MODULE numpy && [ -f /usr/bin/f2py3 ]; then
  OPTS+=" -DWITH_PYTHON_INSTALL_NUMPY=ON"
else
  OPTS+=" -DWITH_PYTHON_INSTALL_NUMPY=OFF"
fi &&

OPTS+=" -DWITH_IMAGE_REDCODE=1 \
        -DWITH_PYTHON_INSTALL=0 \
        -DWITH_STATIC_LIBS=0 \
        -DWITH_PYTHON=1 \
        -DWITH_OPENMP=0 \
        -DWITH_PLAYER=1 \
        -DWITH_GAMEENGINE=1 \
        -DWITH_INSTALL_PORTABLE=0 \
        -DPYTHON_VERSION=3.${PYTHON_VER}" &&

default_cmake_config &&

make &&

# We need to do it this way else make tanks and still needed with 2.72a
python3 ../doc/manpage/blender.1.py bin/blender bin/blender.1 &&

prepare_install &&
make install
