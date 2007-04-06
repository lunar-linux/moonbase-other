(

  echo 'KERNEL=="kvm", NAME="%k", GROUP="kvm"' > 99-kvm.rules &&

  add_priv_group kvm &&
  ./configure --prefix=/usr --with-patched-kernel \
              --qemu-cc=${GCC3_PREFIX:-/opt/lunar/gcc3}/bin/gcc &&
  default_make &&
  install -m0644 99-kvm.rules /etc/udev/rules.d/

) > $C_FIFO 2>&1
