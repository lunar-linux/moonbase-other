(

  sedit 's:NAN_PYTHON_VERSION ?= 2.2:NAN_PYTHON_VERSION ?= 2.3:g' source/nan_definitions.mk &&
  sedit 's:NAN_MESA ?= /usr:NAN_MESA ?= /usr/X11R6:g' source/nan_definitions.mk &&
  make &&
  prepare_install &&
  install -m755 obj/linux-glibc2.3.2-i386/bin/blender /usr/bin/ &&
  install -m755 obj/linux-glibc2.3.2-i386/bin/blenderplayer /usr/bin/ &&
  install -m755 obj/linux-glibc2.3.2-i386/bin/blenderstatic /usr/bin/ &&
  install -m755 obj/linux-glibc2.3.2-i386/bin/Blender3DPlugin.so /usr/lib/ &&
  install -m755 obj/linux-glibc2.3.2-i386/bin/npBlender3DPlugin.so /usr/lib/ &&
  mkdir -p /usr/share/doc/blender &&
  cp -av obj/linux-glibc2.3.2-i386/bin/.blender /usr/share/doc/blender

) > $C_FIFO 2>&1
