sedit '136i #include <stdio.h>' configure.ac &&
sedit '32i #include <libxml/parser.h>' src/common.c &&

autoreconf -fi &&

OPTS+=" --disable-static --disable-gtk-doc-html" &&

default_build
