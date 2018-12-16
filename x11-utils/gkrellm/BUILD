if ! in_depends $MODULE gtk+-2; then
  cd server
fi &&

make &&

prepare_install &&

make INSTALLDIR=/usr/bin \
     INCLUDEDIR=/usr/include \
     MANDIR=/usr/share/man/man1 \
     LOCALEDIR=/usr/share/locale \
     install
