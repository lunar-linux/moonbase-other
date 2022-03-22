sedit '20,21d' uf_glib.h &&
sedit '15i #include <glib.h> \n#include <glib/gstdio.h>' uf_glib.h &&

./autogen.sh &&

OPTS+=" --program-transform-name='s/dcraw*/ufraw-dcraw/'" &&

default_build
