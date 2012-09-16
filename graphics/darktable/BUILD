(

# Fixes a cairo header depreciation build failure
  sedit "s:librsvg/rsvg-cairo.h:cairo.h:g" src/iop/watermark.c &&

  default_cmake_build

) > $C_FIFO 2>&1
