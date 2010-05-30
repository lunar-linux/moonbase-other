(

  sedit 's/#include <string>/#include <string.h>/' modplugxmms/archive/arch_{gzip,rar}.h &&
  sedit '/#include <string.h>/ a\
  #include <stdlib.h>' modplugxmms/archive/arch_rar.h &&
  default_build

) > $C_FIFO 2>&1
