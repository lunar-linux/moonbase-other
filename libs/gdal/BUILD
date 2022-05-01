if in_depends $MODULE qhull ; then
  LDFLAGS+=" `pkgconf --cflags /usr/lib/pkgconfig/qhull.pc`"
  LIBS+=" `pkgconf --libs /usr/lib/pkgconfig/qhull.pc`"
fi &&

# Fixes error of installing etc stuff into /usr/etc
OPTS+=" --sysconfdir=/etc" &&

default_config &&

default_make
