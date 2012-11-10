(

  sedit 's:prefix?=/usr/local:prefix?=/usr:g' Makefile &&

  # this will be fixed in the next release
  sedit '7 a #include <unistd.h>' src/utils.cpp &&
  sedit '2 a #include <unistd.h>' src/reloadthread.cpp &&
  sedit '9 a #include <unistd.h>' src/google_api.cpp &&
  sedit '14 a #include <unistd.h>' src/pb_controller.cpp &&
  sedit '10 a #include <unistd.h>' src/queueloader.cpp &&
  sedit '32 a #include <unistd.h>' src/controller.cpp &&

  default_make

) > $C_FIFO 2>&1
