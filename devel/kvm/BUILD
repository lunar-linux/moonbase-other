(

  add_priv_group kvm &&
  ./configure --prefix=/usr --with-patched-kernel \
              --qemu-cc=${GCC3_PREFIX:-/opt/lunar/gcc3}/bin/gcc &&
  default_make

) > $C_FIFO 2>&1
