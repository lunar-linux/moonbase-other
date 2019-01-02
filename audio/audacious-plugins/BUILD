OPTS+=" --disable-adplug"

if module_installed qt5; then
  OPTS+=" --enable-qt"
else
  OPTS+=" --disable-qt"
fi

if module_installed gtk+-2; then
  OPTS+=" --enable-gtk"
else
  OPTS+=" --disable-gtk"
fi

default_build
