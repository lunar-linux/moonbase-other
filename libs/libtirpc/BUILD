(

  # Fix for undefined reference to _des_crypt_call
  patch_it $SOURCE2 1 &&
  > src/des_crypt.c &&
  default_build

) > $C_FIFO 2>&1
