(
  unset CFLAGS

  OPTS+=" --extra-ldflags=-L/usr/X11R6/lib"
  OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)"

  ./configure --prefix=/usr  \
              --sysconfdir=/etc  \
              --audio-drv-list=oss,alsa,sdl  \
              --audio-card-list=ac97,sb16,es1370,hda  \
              --enable-mixemu  \
              $OPTS  &&

  default_make  &&

# bridge_helper needs suid
  chmod u+s "/usr/libexec/qemu-bridge-helper"  &&

  mkdir -p /usr/lib/udev/rules.d  &&
  install -m644 $SCRIPT_DIRECTORY/65-kvm.rules /usr/lib/udev/rules.d/65-kvm.rules  &&

  # qemu-doc.html may not exist, but it will be ignored if that is the case
  gather_docs TODO qemu-doc.html

) > $C_FIFO 2>&1
