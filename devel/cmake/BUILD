if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --qt-qmake=/usr/lib/qt5/bin/qmake"
fi

if module_installed jsoncpp; then
  OPTS+=" --system-jsoncpp"
else
  OPTS+=" --no-system-jsoncpp"
fi

OLD_MAKES="${MAKES}" && unset MAKES &&

./configure --prefix=/usr  \
            --docdir=/share/doc/cmake \
            --mandir=/share/man \
            --system-bzip2 \
            --system-zlib \
            --system-liblzma \
            --parallel=${OLD_MAKES} \
            $OPTS &&

export MAKES="${OLD_MAKES}" &&

make &&

default_install
