(
 export PKG_CONFIG_PATH=/opt/lunar/gnome/2:/usr/lib:$PKG_CONFIG_PATH &&
 
 # Fixes the errno compile error, please test next version without.
 sedit  "s/#include <fcntl.h>/#include <fcntl.h>\n#include <errno.h>/" src/partitioning.c     &&
 
 default_build 
 

) > $C_FIFO 2>&1
