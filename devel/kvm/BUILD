(

  echo 'KERNEL=="kvm", NAME="%k", GROUP="kvm"' > 90-kvm.rules &&

  add_priv_group kvm &&
  ./configure --prefix=/usr --with-patched-kernel \
              --qemu-cc=${GCC3_PREFIX:-/opt/lunar/gcc3}/bin/gcc &&
  default_make &&
  install -m0644 90-kvm.rules /etc/udev/rules.d/

) > $C_FIFO 2>&1
