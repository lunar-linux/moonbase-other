export QTDIR="${QT_PREFIX:-$QTDIR}"
OPTS=$OPTS" --with-mysql-includes=/usr/include/mysql \
            --with-qt-libraries=$QTDIR/lib"
sedit "s: -lqt: -lqt-mt:" src/main/Makefile.in &&
default_build
