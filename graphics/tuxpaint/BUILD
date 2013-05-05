sedit "s@\(linux_ARCH_LINKS:=.*\)\$@\1 \$(PNG) -lm@" Makefile &&
sedit "s@-g3@@" Makefile &&
sedit "s@Art\;@Art\;Graphics@" src/tuxpaint.desktop &&

# make it work with current libpng
sedit " /info_ptr->/ d" src/tuxpaint.c &&
sedit "12901 i png_set_IHDR(png_ptr, info_ptr, surf->w, surf->h, 8, PNG_COLOR_TYPE_RGB, PNG_INTERLACE_ADAM7, PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);" src/tuxpaint.c &&

make $OPTS PREFIX=/usr &&

prepare_install &&

# GNOME_PREFIX triggers installation of a .desktop file
make install PREFIX=/usr GNOME_PREFIX=/usr
