if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc
fi &&

# bug: examples have to be build, if they (the sources) will be installed
if [[ "`get_module_config EXAMPLES`" = "y" ]]; then
  OPTS+=" -DBUILD_EXAMPLES=1"
else
  OPTS+=" -DBUILD_EXAMPLES=0"
fi &&

OPTS+=" -DBUILD_WITH_DEBUG_INFO=0  \
        -DBUILD_TESTS=0            \
        -DBUILD_PERF_TESTS=0       \
        -DINSTALL_TO_MANGLED_PATHS=1 \
        -DCMAKE_SKIP_RPATH=1"

default_cmake_build
