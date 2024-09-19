sedit '26i #include <string.h>' plugins/png/qtpng.c &&

autoreconf -fiv &&

# Disabling gtk usage for now, causes the make to barf.
OPTS+=" --enable-gpl --without-gtk --without-doxygen"

default_build
