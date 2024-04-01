sed -i 's/-unknown//' autogen.sh &&
autoreconf -fi &&

export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" --disable-static \
        --disable-fd-passing \
        --enable-largefile \
        --disable-gpg-test \
        --disable-gpgsm-test"

if module_installed qt5 && [[ ! -f /usr/lib/cmake/QGpgme/QGpgmeConfig.cmake ]]; then
  . /etc/profile.d/qt5.rc &&
  export MOC=/usr/lib/qt5/bin/moc
  export GPGME_QT5_LIBS=$(pkgconf --libs /usr/lib/qt5/pkgconfig/Qt5Core.pc)
  export GPGME_QT5_CFLAGS=$(pkgconf --cflags /usr/lib/qt5/pkgconfig/Qt5Core.pc)
fi &&
default_build &&

# Cannot be in the same source directory
if module_installed qt6-base; then
  source /etc/profile.d/qt6.rc &&
  cp -r . ../gpgme-qt6
  export GPGME_QT6_LIBS=$(pkgconf --libs /usr/lib/qt6/pkgconfig/Qt6Core.pc)
  export GPGME_QT6_CFLAGS=$(pkgconf --cflags /usr/lib/qt6/pkgconfig/Qt6Core.pc)
  export MOC=/usr/lib/qt6/moc
  ./configure --prefix=/usr --enable-languages=cpp,qt6 $OPTS &&
  cd ../gpgme-qt6 && 
  default_make
fi
