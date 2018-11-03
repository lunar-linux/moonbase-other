. /etc/profile.d/qt5.rc &&

sed -i -e '/dnl.*AM_INIT_AUTOMAKE/d' configure.in &&
sed -i -e "/runqmake.sh/d" configure.in &&
mv configure.in configure.ac &&

export CXXFLAGS="$CXXFLAGS -fno-var-tracking-assignments" &&

./autogen.sh --prefix=/usr $OPTS &&

/usr/bin/qmake-qt5 $OPTS &&
default_make
