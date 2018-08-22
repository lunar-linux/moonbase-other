# this is broken with boost 1.60+
OPTS+=" -DCEGUI_BUILD_PYTHON_MODULES=0" &&

OPTS+=" -DCEGUI_SAMPLES_ENABLED=0 -DPYTHON_EXECUTABLE=/usr/bin/python2 -DCEGUI_BUILD_XMLPARSER_TINYXML=0" &&

# this is ridiculous, but they load modules dynamically
# and I don't know how to remove the flag only for those few.
bad_flags -s &&

default_cmake_build
