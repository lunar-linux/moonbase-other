sedit "s:# *include <glib/[^>]*>:#include <glib.h>:" charset/* lib/* &&

# Get rid of docs since it requires c2man.
sedit "s:bin doc test:bin test:" Makefile.am &&
# Don't need this
rm bootstrap &&
# So it doens't bark about missing
mkdir m4 &&
autoreconf -i &&
OPTS+=" --with-glib=yes" &&
default_build
