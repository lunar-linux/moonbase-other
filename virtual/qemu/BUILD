(

  OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)"

  AUDIO_LIST="oss"

  in_depends $MODULE alsa-lib && AUDIO_LIST+=",alsa"
  in_depends $MODULE esound && AUDIO_LIST+=",esd"
  in_depends $MODULE pulseaudio && AUDIO_LIST+=",pa"
  in_depends $MODULE SDL && AUDIO_LIST+=",sdl"

  add_priv_group kvm &&

  ./configure --prefix=/usr  \
              --sysconfdir=/etc  \
              --audio-drv-list="$AUDIO_LIST"  \
              --audio-card-list=ac97,sb16,es1370,hda  \
              --enable-mixemu  \
              $OPTS  &&

  default_make  &&

# bridge_helper needs suid
  chmod u+s "/usr/libexec/qemu-bridge-helper"  &&

  if module_installed systemd; then
    install -D -m644 $SCRIPT_DIRECTORY/65-kvm.rules /usr/lib/udev/rules.d/65-kvm.rules
  else
    install -D -m644 $SCRIPT_DIRECTORY/65-kvm.rules /lib/udev/rules.d/65-kvm.rules
  fi &&

  # qemu-doc.html may not exist, but it will be ignored if that is the case
  gather_docs TODO qemu-doc.html

) > $C_FIFO 2>&1
