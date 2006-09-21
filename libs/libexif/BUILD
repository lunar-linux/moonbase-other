(

  patch_it  $SOURCE_CACHE/$SOURCE2  1  &&

  sedit "s:@includedir@:@includedir@/libexif:" libexif/libexif.pc.in
  default_build

) > $C_FIFO 2>&1
