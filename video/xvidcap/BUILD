(

  sedit "s:shmstr.h:shmproto.h:" src/capture.c &&
  # the following two sedit rules are needed to compile with
  # current glib-2             -- wdp
  sedit "s:#include <glib/gtypes.h>:#include <glib.h>:" src/xvidcap-client-bindings.h &&
  sedit "s:#include <glib/gerror.h>::" src/xvidcap-client-bindings.h &&

  default_build

) > $C_FIFO 2>&1
