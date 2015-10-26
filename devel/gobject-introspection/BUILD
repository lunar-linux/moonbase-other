OPTS+=" --disable-static" &&

if [ "`get_module_config DOCS`" = "n" ]; then
  sedit 's/SUBDIRS = . docs tests/SUBDIRS = . tests/g' Makefile.in
fi &&

default_build
