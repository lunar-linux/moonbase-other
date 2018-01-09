(
  # the following sedit rule is needed to compile with
  # current glib-2             -- wdp
  sedit "s:#include <glib/gthread.h>:#include <glib.h>:" glib/glue/thread.c &&

  default_build

) > $C_FIFO 2>&1
