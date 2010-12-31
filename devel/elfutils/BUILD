(

  OPTS+=" --program-prefix='eu-'"

  CFLAGS="-fgnu89-inline"

  find . -type f -name 'Makefile.*' -exec sed -i 's/-Werror//g' {} \; &&
  default_build &&

  # Fix gcc unable to create executables
  ln -sf /usr/lib/libelf.so /usr/lib/libelf.so.0

) > $C_FIFO 2>&1
