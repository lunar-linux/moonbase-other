cp $SCRIPT_DIRECTORY/site.config.m4 devtools/Site/ &&

OPTS+=" DESTDIR=/usr \
        LIBDIR="/usr/lib \
        MANROOT=/usr/share/man/man \
        MILTER_SOVER="$(lvu version libmilter | cut -d. -f2-3)\" "

make -C libmilter $OPTS &&

prepare_install &&
make -C libmilter install
