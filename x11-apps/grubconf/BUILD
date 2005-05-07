(
 
 # Fixes the errno compile error, please test next version without.
 sedit  "s/#include <fcntl.h>/#include <fcntl.h>\n#include <errno.h>/" src/partitioning.c     &&
 
 default_build 
 

) > $C_FIFO 2>&1
