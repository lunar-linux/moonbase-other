OPTS+=" --enable-shared --enable-targets=host-only" &&

if in_depends $MODULE libffi; then
   CPPFLAGS+=" -I/usr/lib/libffi-$(lvu installed libffi)/include"
fi &&

default_build
