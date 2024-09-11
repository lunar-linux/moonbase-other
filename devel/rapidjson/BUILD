#Don't use -Werror
find -name CMakeLists.txt | xargs sed -e 's|-Werror||' -i &&

OPTS+=" -DRAPIDJSON_HAS_STDSTRING=ON -DRAPIDJSON_BUILD_DOC=OFF \
        -DRAPIDJSON_BUILD_EXAMPLES=OFF"

default_cmake_build
