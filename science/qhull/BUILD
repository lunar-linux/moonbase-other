OPTS+=" -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC -DCMAKE_BUILD_TYPE=Release -DLINK_APPS_SHARED=ON" &&

default_cmake_build &&

#Builds libqhull.so needed by octave. Note; not the same as libqhull_r.so.
cmake --build . --target libqhull &&

cp -P libqhull.so* /usr/lib/

