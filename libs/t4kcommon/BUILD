# make it work with current libpng
sedit " /info_ptr->/ d" src/t4k_loaders.c &&
sedit "1030 i png_set_IHDR(png_ptr, info_ptr, surf->w, surf->h, 8, PNG_COLOR_TYPE_RGB_ALPHA, PNG_INTERLACE_ADAM7, PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);" src/t4k_loaders.c &&

default_build
