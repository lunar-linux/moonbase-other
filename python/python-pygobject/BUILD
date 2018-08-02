if [ "`get_module_config DOCS`" = "n" ]; then
  sedit "s/SUBDIRS = docs codegen/SUBDIRS = codegen/g" Makefile.in
fi &&

OPTS+=" --with-python=python --enable-cairo"

DESTDIR=$SOURCE_DIRECTORY/__dest
default_config &&
make &&
make DESTDIR=$DESTDIR install &&
prepare_install &&

# A bit hackish to avoid conflict with header and .pc files in python2-pygobject
if module_installed python2-pygobject &&
    [ -f "/usr/include/pygobject-3.0/pygobject.h" ] &&
    [ -f "/usr/lib/pkgconfig/pygobject-3.0.pc" ]; then
  rm -rf "$DESTDIR/usr/include" &&
  rm -rf "$DESTDIR/usr/lib/pkgconfig"
fi &&

cp -rf --remove-destination $DESTDIR/* /
