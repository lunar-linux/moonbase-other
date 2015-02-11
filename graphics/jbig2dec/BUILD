
  OPTS+=" --disable-static" &&

  sedit "s:AM_CONFIG_HEADER:AC_CONFIG_HEADERS:" configure.ac &&

# Fix up some png issues
  sedit "s:png_check_sig:png_sig_cmp:" configure.ac &&
  sedit "s:png_ptr->io_ptr:png_get_io_ptr(png_ptr):g" jbig2_image_png.c &&
  sedit "s:CVT_PTR(:(:" jbig2_image_png.c &&

  default_build
