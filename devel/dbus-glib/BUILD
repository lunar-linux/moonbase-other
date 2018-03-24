OPTS+=" --disable-static" &&

if [ "`get_module_config DOCS`" = "n" ]; then
  sedit 's/SUBDIRS = dbus tools test doc/SUBDIRS = dbus tools test/g' Makefile.in
fi &&

default_build
