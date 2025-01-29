export PERL_LIBDIR+=" /usr/lib/perl5/$(lvu version perl)" &&

OPTS+=" --prefix=/usr               \
        --sysconfdir=/etc           \
        --localstatedir=/var        \
        --disable-start-stop-daemon \
        --disable-static \
        $OPTS" &&

default_build &&

rm /usr/lib/libdpkg.a
