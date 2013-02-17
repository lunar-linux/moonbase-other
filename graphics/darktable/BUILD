# Fixes jpeg 9 problems
sedit "/#include [<\"]jpeglib.h[>\"]/ i typedef int boolean;\n#define HAVE_BOOLEAN" src/external/rawspeed/RawSpeed/StdAfx.h && #src/common/imageio_jpeg.h src/external/rawspeed/RawSpeed/StdAfx.h &&
# Fixes a cairo header depreciation build failure
sedit "s:librsvg/rsvg-cairo.h:cairo.h:g" src/iop/watermark.c &&

default_cmake_build
