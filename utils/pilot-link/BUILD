(

  # this hack is needed at pilot-link has a brain-dead configure file that
  # insists on setting -Werror and doesn't respect the --disable-compiler-werror flag
  bad_flags -Werror &&
  OPTS="$OPTS --enable-conduits --with-libpng=/usr --with-readline --with-perl --with-python" &&
  default_build

) > $C_FIFO 2>&1
