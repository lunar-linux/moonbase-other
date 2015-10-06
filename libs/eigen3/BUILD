# This needs enabling else the cmake confiugre part takes a dump.
OPTS+=" -DBUILD_TESTING=1" &&

default_cmake_build &&

install -Dm0644 {$SOURCE_DIRECTORY/cmake,/usr/share/cmake-$(module_version cmake | cut -d. -f1-2)/Modules}/FindEigen3.cmake
