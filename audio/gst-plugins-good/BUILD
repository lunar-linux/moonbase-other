if module_installed qt5 ; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --with-moc=/usr/bin/moc-qt5"
fi

OPTS+=" --dexamples=disabled"

default_meson_build
