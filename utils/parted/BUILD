(

  # Hopefully this is a temporary hack to clean up the mess the parted devs made.
  sedit "/^intl\/Makefile/d" configure.in &&
  aclocal &&
  autoconf &&

  default_build

) > $C_FIFO 2>&1
