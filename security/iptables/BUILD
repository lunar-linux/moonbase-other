(
  patch_it  $SOURCE_CACHE/$SOURCE2 1

#I think this optimization must be carefully considered,
# seeing these are kernel stuff...
# The -O2 is needed, as there are some "#ifndef __OPTIMIZE__" stuff
# that would break the compilation as they add duplicates in the
# source... and I'm leaving that as an exercise to the reader
# to find the reasons behind it (Hint: check macro expansion in optimization
# modes of GCC)
# hevisko
  sedit  "s/-O2/$CFLAGS -O2/"  Makefile  &&
  make  LIBDIR=/usr/lib              &&
  prepare_install                    &&
  make  LIBDIR=/usr/lib              \
        BINDIR=/usr/sbin             \
        MANDIR=/usr/share/man        \
        INCDIR=/usr/include install  \
        install
  make  LIBDIR=/usr/lib              \
        BINDIR=/usr/sbin             \
        MANDIR=/usr/share/man        \
        INCDIR=/usr/include          \
        install-devel

) > $C_FIFO 2>&1
