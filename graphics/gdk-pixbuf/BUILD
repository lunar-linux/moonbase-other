OPTS+=" --prefix /usr"

if [ "`get_module_config DOCS`" = "n" ]; then
  sedit "s/SUBDIRS = gdk-pixbuf po docs/SUBDIRS = gdk-pixbuf po/g" Makefile.in
fi &&

mkdir build &&

meson build $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install
