if [ "`get_module_config DOCS`" = "n" ]; then
  sedit "s/SUBDIRS = docs codegen/SUBDIRS = codegen/g" Makefile.in
fi  &&

# ignore unrecognized format function type warning
sedit 's:CFLAGS="$CFLAGS -Werror=format"::' configure &&

OPTS+=" --with-python=python2 --enable-cairo" &&

default_build
