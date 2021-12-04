OPTS+=" --enable-mpers=no"

if in_depends $MODULE libunwind; then
  CPPFLAGS+=" -I/usr/include/libunwind"
fi &&

default_build
