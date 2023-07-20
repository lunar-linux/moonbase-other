OPTS+=" --sysconfdir=/etc/collectd --disable-werror"

if in_depends $MODULE libgcrypt; then
  CFLAGS=$(pkgconf --libs /usr/lib/pkgconfig/libgcrypt.pc)
fi &&

default_build &&
install -Dm644 contrib/collectd2html.pl /usr/share/collectd/collectd2html.pl
