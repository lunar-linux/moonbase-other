if module_installed qt5 ; then
  . /etc/profile.d/qt5.rc
  OPTS+=" -D qt5=enabled"
fi &&

if module_installed gtk+-3 ; then
  OPTS+=" -D gtk3=enabled"
fi

OPTS+=" -D doc=disabled \
        -D rpicamsrc=disabled \
        -D examples=disabled"

default_meson_build
