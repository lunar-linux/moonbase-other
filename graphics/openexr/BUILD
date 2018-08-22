# this fails because libIlmThread is badly linked
# have fun fixing this .... -- v4hn
bad_flags ',--as-needed' &&

# needs boost compiled with python 2.7.x support
OPTS+=" -DOPENEXR_BUILD_TESTS=0 -DOPENEXR_BUILD_PYTHON_LIBS=0" &&

default_cmake_build
