OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)" &&

OPTS+=" --libexecdir=/usr/lib/qemu" &&

AUDIO_LIST="oss" &&

in_depends $MODULE alsa-lib && AUDIO_LIST+=",alsa"
in_depends $MODULE esound && AUDIO_LIST+=",esd"
in_depends $MODULE pulseaudio && AUDIO_LIST+=",pa"
in_depends $MODULE SDL && AUDIO_LIST+=",sdl"

if [ "$ENABLE_KVM" == "y" ]; then
  # Enable kvm VirtFS (VirtIO framework for Plan 9 folder sharing protocol)
  # It's faster than folder sharing over NFS
  OPTS+=" --enable-virtfs"
fi &&

add_priv_group kvm &&

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --audio-drv-list="$AUDIO_LIST" \
            --enable-attr \
            --enable-vhost-net \
            $OPTS &&

default_make &&

if module_installed systemd; then
  install -D -m644 $SCRIPT_DIRECTORY/udev/65-kvm.rules /usr/lib/udev/rules.d/65-kvm.rules
else
  install -D -m644 $SCRIPT_DIRECTORY/udev/65-kvm.rules /etc/udev/rules.d/65-kvm.rules
fi &&

# bridge_helper needs suid
chmod u+s "/usr/lib/qemu/qemu-bridge-helper" &&

# qemu-doc.html may not exist, but it will be ignored if that is the case
gather_docs TODO qemu-doc.html
