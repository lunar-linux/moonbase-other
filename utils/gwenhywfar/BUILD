autoreconf -fi &&

OPTS+=" --with-guis=gtk3"

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --with-qt5-qmake=/usr/lib/qt5/bin/qmake \
           --with-qt5-moc=/usr/lib/qt5/bin/moc    \
           --with-qt5-uic=/usr/lib/qt5/bin/uic    \
           --with-guis=qt5"
fi

default_build
