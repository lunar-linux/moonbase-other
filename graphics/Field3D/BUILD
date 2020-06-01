OPTS+=" -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC -DINSTALL_DOCS=OFF" &&

sedit "s:Boost COMPONENTS:Boost COMPONENTS system:" CMakeLists.txt &&
sedit "/FIND_PACKAGE (HDF5/ a add_compile_options(-DH5_USE_110_API=1)" CMakeLists.txt &&

default_cmake_build
