if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
else
  if in_depends $MODULE qt4; then
    . /etc/profile.d/qt4.rc
  else
    OPTS+=" -DWITH_QT=0"
  fi
fi &&

# bug: examples have to be build, if they (the sources) will be installed
if [[ "`get_module_config EXAMPLES`" = "y" ]]; then
  OPTS+=" -DBUILD_EXAMPLES=1"
else
  OPTS+=" -DBUILD_EXAMPLES=0"
fi &&

# Doing a few sedits here so the following executables do not stomp on the ones from
# opencv-2.4.13. It's either this or changing the bin path to something like /usr/sbin/
# Since the mangled paths options takes care of any variables used by its pkgconfig and
# renameing includes and libs, this route seems the less poluting. 

sedit 's:\"opencv_annotation\":\"opencv3_annotation\":' apps/annotation/CMakeLists.txt &&
sedit 's:\"opencv_createsamples\":\"opencv3_createsamples\":' apps/createsamples/CMakeLists.txt &&
sedit 's:\"opencv_traincascade\":\"opencv3_traincascade\":' apps/traincascade/CMakeLists.txt &&

OPTS+=" -DBUILD_WITH_DEBUG_INFO=0 \
        -DBUILD_TESTS=0 \
        -DBUILD_PERF_TESTS=0 \
        -DBUILD_SHARED_LIBS=1 \
        -DCMAKE_SKIP_RPATH=1 \
        -DINSTALL_TO_MANGLED_PATHS=1" &&

default_cmake_config &&


default_make
