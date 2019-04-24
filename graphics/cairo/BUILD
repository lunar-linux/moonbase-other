# Needed to fix gcc-4.9 make failure
CFLAGS+=" -fno-lto" &&
CXXFLAGS+=" -fno-lto" &&

if [ -f /usr/include/GL/gl.h ] ; then
  OPTS+=" --enable-gl"
fi &&

OPTS+=" --disable-static --enable-gobject=yes" &&

if [ "`get_module_config DOCS`" = "n" ]; then
  sedit 's/SUBDIRS = src doc util/SUBDIRS = src util/g' Makefile.in
fi &&

# LIBS is needed for cairo-sphinx and others with --as-needed
LIBS+=" -lstdc++" &&

default_build
