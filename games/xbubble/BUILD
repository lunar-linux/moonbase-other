(

  # Remove the hardcoded CFLAGS
  sedit "/^AM_CFLAGS/d" src/Makefile.in &&

  ./configure  --build=$BUILD                       \
               --prefix=$MODULE_PREFIX              \
               --bindir=$MODULE_PREFIX/games        \
	       --mandir=$MODULE_PREFIX/share/man    \
	       --datadir=$MODULE_PREFIX/share/games \
	       --with-x                             \
	       $OPTS                                &&

  # The NLS files tend to wander off to the games dir.
  # So, we call make this way to put them where they belong.
  make localedir="/usr/share/locale"         &&
  prepare_install                            &&
  make localedir="/usr/share/locale" install &&

  gather_docs NetworkProtocol

) > $C_FIFO 2>&1
