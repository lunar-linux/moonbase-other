# this fails because libIlmThread is badly linked
# have fun fixing this .... -- v4hn
bad_flags ',--as-needed' &&

# needs boost compiled with python 2.7.x support
OPTS+=" -D OPENEXR_BUILD_PYTHON_LIBS=OFF"

OPTS+=" -D OPENEXR_BUILD_TESTS=OFF"

default_cmake_build
