OPTS+=" --prefix=/usr/lib/musl
        --exec-prefix=/usr \
        --syslibdir=/usr/lib \
        --enable-wrapper=all"

default_build &&

if [[ $(arch) == i686 ]]; then
  ln -sf /usr/lib/musl/lib/libc.so /usr/lib/ld-musl-i686.so
else
  ln -sf /usr/lib/musl/lib/libc.so /usr/lib/ld-musl-x86_64.so
fi
