# qemu vs. make 4 == bad
export ARFLAGS=rv

CFLAGS+=" -fPIC"

add_priv_user qemu:qemu &&

AUDIO_LIST="alsa"
in_depends $MODULE pulseaudio && AUDIO_LIST+=",pa"
in_depends $MODULE SDL2 && AUDIO_LIST+=",sdl"

OPTS+=" --target-list=$(echo $TARGETLIST | sed s/\ /,/g)"

OPTS+=" --sbindir=/usr/bin"

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --audio-drv-list="$AUDIO_LIST" \
            --enable-attr \
            --enable-fdt=internal \
            --enable-modules \
            --enable-vhost-net \
            $OPTS &&

# fix a cpp error
sedit "s: -c::" pc-bios/optionrom/Makefile

make ${MAKES:+-j${MAKES}} &&
prepare_install &&
default_install &&

install -D -m644 $SCRIPT_DIRECTORY/udev/65-kvm.rules /usr/lib/udev/rules.d/65-kvm.rules &&

mkdir -p /usr/lib/modules-load.d &&
install -m 644 $SCRIPT_DIRECTORY/qemu-modules.conf /usr/lib/modules-load.d/ &&

# qemu-doc.html may not exist, but it will be ignored if that is the case
gather_docs TODO qemu-doc.html
