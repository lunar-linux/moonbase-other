#Don't use -Werror
find -name CMakeLists.txt | xargs sed -e 's|-Werror||' -i &&

OPTS+=" -DRAPIDJSON_ENABLE_INSTRUMENTATION_OPT=OFF \
        -DRAPIDJSON_HAS_STDSTRING=ON"

default_cmake_build
