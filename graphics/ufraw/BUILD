  sedit 's:if ((cp = strchr (sp="nbrkStqmHAC", opt))):if ((cp = (char *) strchr (sp="nbrkStqmHACg", opt))):' dcraw.cc &&

  sedit 's:\(#include <jpeglib.h>\):typedef int boolean;\n#define HAVE_BOOLEAN\n\1:' dcraw.cc &&

  OPTS+=" --program-transform-name='s/dcraw*/ufraw-dcraw/'" &&

  default_build
