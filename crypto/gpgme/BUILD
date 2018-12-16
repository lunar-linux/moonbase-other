if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

if [ "$LARGE_FILES" == "n" ]; then
  OPTS+=" --disable-largefile"
fi

OPTS+=" --disable-static \
        --disable-fd-passing \
        --disable-gpgsm-test"

default_build
