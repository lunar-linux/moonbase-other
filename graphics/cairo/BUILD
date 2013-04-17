OPTS+=" --disable-static" &&

if in_depends $MODULE qt4 ; then
  . /etc/profile.d/qt4.rc
fi &&

if [ "`get_module_config DOCS`" = "n" ] ; then
  sedit 's/SUBDIRS = src doc util/SUBDIRS = src util/g' Makefile.in
fi &&

# LIBS is needed for cairo-sphinx and others with --as-needed
LIBS="-lstdc++" \
default_build
