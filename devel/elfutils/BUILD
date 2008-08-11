(

  OPTS+=" --program-prefix='eu-'"
  find . -type f -name 'Makefile.*' -exec sed -i 's/-Werror//g' {} \; &&
  default_build

) > $C_FIFO 2>&1
