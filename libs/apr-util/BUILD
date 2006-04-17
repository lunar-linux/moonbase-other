(
  patch_it $SOURCE2 1 &&
  OPTS="$OPTS --with-apr=`which apr-$(installed_version apr | cut -d. -f1)-config` --with-iconv=/usr --without-mysql" &&
  default_build
) > $C_FIFO 2>&1
