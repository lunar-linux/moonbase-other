(
  # Fixes the Makefile's hardcoded path for the man page
  sedit "s:usr/man/man1:usr/share/man/man1:" Makefile.in &&

  # Add a missing include
  sedit "s:<sys/time.h>:<sys/time.h>\n#include <time.h>:" netwatch.c &&

  default_build
 
) > $C_FIFO 2>&1
