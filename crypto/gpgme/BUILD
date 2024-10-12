sed -i 's/-unknown//' autogen.sh &&
autoreconf -fi &&

export PYTHONDONTWRITEBYTECODE=1 &&

sed -i 's#"t-keylist-secret",##' tests/json/t-json.c &&

OPTS+=" --disable-static \
        --disable-fd-passing \
        --enable-largefile \
        --disable-gpg-test \
        --disable-gpgsm-test"

if in_depends $MODULE qt6-base; then
  source /etc/profile.d/qt6.rc &&
  export GPGME_QT6_LIBS=$(pkgconf --libs /usr/lib/qt6/pkgconfig/Qt6Core.pc)
  export GPGME_QT6_CFLAGS=$(pkgconf --cflags /usr/lib/qt6/pkgconfig/Qt6Core.pc)
  export MOC=/usr/lib/qt6/moc &&
  OPTS+=" --enable-languages=cpp,qt6"
fi &&

#https://dev.gnupg.org/T6673#174545, strongly recommend building in its own dir
mkdir $MODULE-$VERSION &&
cd $MODULE-$VERSION &&
../configure --prefix=/usr $OPTS &&

default_make
