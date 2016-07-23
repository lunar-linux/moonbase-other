if [ "`get_module_config DOCS`" = "n" ]; then
  sedit "s/SUBDIRS = docs codegen/SUBDIRS = codegen/g" Makefile.in
fi &&

#use --disable-introspection to avoid file conflict with pygobject3
OPTS+=" --disable-introspection" &&

OPTS+=" --enable-cairo" &&

default_build
