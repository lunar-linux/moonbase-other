sed -i 's,== 201103L,>= 201103L,g' m4/ac_check_cxx11.m4 &&

autoreconf -fi &&

OPTS+="  --disable-debug \
         --disable-static \
         --enable-arch=$(arch)"

default_build
