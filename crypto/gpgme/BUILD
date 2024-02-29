sed -i 's/-unknown//' autogen.sh &&
autoreconf -fi &&

export PYTHONDONTWRITEBYTECODE=1 &&

if in_depends $MODULE qt5 && [[ ! -f /usr/lib/cmake/QGpgme/QGpgmeConfig.cmake ]]; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" --disable-static \
        --disable-fd-passing \
        --enable-largefile \
        --disable-gpgsm-test"

default_build
