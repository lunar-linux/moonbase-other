
 patch_it $SOURCE5 1 &&
 patch_it $SOURCE4 1 &&

 ./bootstrap.sh

 OPTS+=" --disable-static" &&

 sedit "s:../test_config.h:test_config.h:" tests/gdimagefile/gdnametest.c &&
 sedit "s:#include <stdlib.h>:#include <stdlib.h> \n#include <string.h>:" tests/gdimagefile/gdnametest.c &&

 default_build
