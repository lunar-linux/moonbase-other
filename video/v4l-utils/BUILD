if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  CXXFLAGS+=" -std=c++11"
  export MOC=/usr/lib/qt5/bin/moc
  export UIC=/usr/lib/qt5/bin/uic
  export RCC=/usr/lib/qt5/bin/rcc
 else
  OPTS+=" --disable-qv4l2"
fi

OPTS+=" --exec-prefix=/usr \
        --disable-static \
        --disable-doxygen-ps \
        --disable-doxygen-html \
        --disable-doxygen-pdf"

default_build
