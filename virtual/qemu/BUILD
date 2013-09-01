  OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)"

  AUDIO_LIST="oss"

  in_depends $MODULE alsa-lib && AUDIO_LIST+=",alsa"
  in_depends $MODULE esound && AUDIO_LIST+=",esd"
  in_depends $MODULE pulseaudio && AUDIO_LIST+=",pa"
  in_depends $MODULE SDL && AUDIO_LIST+=",sdl"

  add_priv_group kvm &&

  ./configure --prefix=/usr  \
              --sysconfdir=/etc  \
              --libexecdir=/usr/lib/qemu  \
              --localstatedir=/var  \
              --audio-drv-list="$AUDIO_LIST"  \
              --enable-mixemu  \
              $OPTS  &&

  default_make  &&

  if module_installed systemd; then
    install -D -m644 $SCRIPT_DIRECTORY/65-kvm.rules /usr/lib/udev/rules.d/65-kvm.rules
  else
    install -D -m644 $SCRIPT_DIRECTORY/65-kvm.rules /lib/udev/rules.d/65-kvm.rules
  fi &&

  # bridge_helper needs suid
  chmod u+s "/usr/lib/qemu/qemu-bridge-helper"  &&

  # qemu-doc.html may not exist, but it will be ignored if that is the case
  gather_docs TODO qemu-doc.html
