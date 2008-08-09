(

  OPTS+=" --program-prefix='eu-'"
  CFLAGS="$CFLAGS -fgnu89-inline "
  find . -type f -name 'Makefile.*' -exec sed -i 's/-Werror//g' {} \; &&
  default_build

) > $C_FIFO 2>&1
