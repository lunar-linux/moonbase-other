# Needed to fix gcc-4.9 make failure
CFLAGS+=" -fno-lto" &&
CXXFLAGS+=" -fno-lto" &&

OPTS+=" --disable-static --enable-gobject=yes"

if module_installed mesa-lib; then
  if module_installed NVIDIA; then
    # disable gl option if using NVIDIA blobs (gtk+-2 segfaults)
    OPTS+=" --disable-gl"
  else
    OPTS+=" --enable-gl"
  fi
fi

if [ "`get_module_config DOCS`" = "n" ]; then
  sedit 's/SUBDIRS = src doc util/SUBDIRS = src util/g' Makefile.in
fi &&

# LIBS is needed for cairo-sphinx and others with --as-needed
LIBS+=" -lstdc++" &&

default_build
