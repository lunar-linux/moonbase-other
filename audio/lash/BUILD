
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&

  sedit "29i #include <uuid/uuid.h>" lashd/server.h &&

  LDFLAGS+=" -lm -ldl" &&

  default_build
