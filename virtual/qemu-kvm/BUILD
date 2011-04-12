(

  OPTS+=" --audio-drv-list=alsa,sdl,oss,esd \
          --audio-card-list=ac97,sb16,es1370,adlib"

  ./configure --prefix=/usr \
              --sysconfdir=/etc \
              $OPTS &&

  default_make &&
  install -D -m0644 $SCRIPT_DIRECTORY/65-kvm.rules /lib/udev/rules.d/65-kvm.rules &&
  ln -s qemu-system-x86_64 /usr/bin/qemu-kvm &&
  ln -s qemu-system-x86_64 /usr/bin/qemu &&
  ln -s qemu-system-x86_64 /usr/bin/kvm &&
  mv /usr/share/man/man1/qemu.1 /usr/share/man/man1/qemu-kvm.1

) > $C_FIFO 2>&1
