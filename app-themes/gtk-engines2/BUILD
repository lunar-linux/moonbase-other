# the following sedit rule is needed to compile with
# current glib-2             -- wdp
sedit "s:#include <glib/gtimer.h>:#include <glib.h>:" engines/clearlooks/src/animation.c &&

# Adds in support for Clearlooks animation (still needs to be
# activated by the user in the grkrc file) and enables the
# lua based scritping engine (uses an internal version of lua,
# no outside depends needed)
OPTS+=" --enable-animation --enable-lua" &&

default_build
