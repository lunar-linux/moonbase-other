
sedit 's:-R${libdir}::' scripts/*.in &&

OPTS+=" -DBUILD_SHARED_LIBS=True -DCMAKE_C_FLAGS=-ffat-lto-objects" &&

python setup.py build &&

default_cmake_build
