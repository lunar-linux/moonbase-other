(
  # Fixes the errno error.
  sedit "s/extern int errno;/#include<errno.h>/" libfs/fssubs.c
  sedit "s/extern int errno;/#include<errno.h>/" libfs/log_dump.c
  sedit "s/extern int errno;/#include<errno.h>/" libfs/log_map.c
  sedit "s/extern int errno;/#include<errno.h>/" libfs/log_read.c
  sedit "s/extern int errno;/#include<errno.h>/" libfs/logredo.c
	  

  OPTS=$OPTS" --exec-prefix=/"

  default_build

) > $C_FIFO 2>&1
