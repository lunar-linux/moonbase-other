
rm -f /usr/lib/gtk-3.0/3.0.0/immodules.cache &&

# Skip the testsuite, demos and examples, not needed. However, the test subdir is.
sedit "s:testsuite examples::" Makefile.{am,in} &&
sedit "s:demos::" Makefile.{am,in} &&

OPTS+=" --disable-schemas-compile --disable-gtk-doc-html --enable-x11-backend" &&

default_build
