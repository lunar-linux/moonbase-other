# qemu vs. make 4 == bad
export ARFLAGS=rv

CFLAGS+=" -fPIC"

OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)" &&

AUDIO_LIST="alsa" &&

in_depends $MODULE pulseaudio && AUDIO_LIST+=",pa"
in_depends $MODULE SDL && AUDIO_LIST+=",sdl"

add_priv_user qemu:qemu -G kvm &&

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --audio-drv-list="$AUDIO_LIST" \
            --enable-attr \
            --enable-modules \
            --enable-vhost-net \
            $OPTS &&

# fix a cpp error
sedit "s: -c::" pc-bios/Makefile

default_make &&

if module_installed systemd; then
  install -D -m644 $SCRIPT_DIRECTORY/udev/65-kvm.rules /usr/lib/udev/rules.d/65-kvm.rules
else
  install -D -m644 $SCRIPT_DIRECTORY/udev/65-kvm.rules /etc/udev/rules.d/65-kvm.rules
fi &&

# bridge_helper needs suid
chmod u+s "/usr/libexec/qemu-bridge-helper" &&

# qemu-doc.html may not exist, but it will be ignored if that is the case
gather_docs TODO qemu-doc.html
