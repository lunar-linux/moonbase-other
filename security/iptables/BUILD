(

  sedit  "s/-O2/$CFLAGS -O2/"  Makefile  &&
  make  LIBDIR=/usr/lib              \
        KERNEL_DIR=/usr/src/linux   &&
  prepare_install                   &&
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
