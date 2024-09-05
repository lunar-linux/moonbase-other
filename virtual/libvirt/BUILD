# IAW compiling.rst, unset
unset CFLAGS

export PYTHONDONTWRITEBYTECODE=1 &&

add_priv_user qemu:qemu &&
add_priv_user libvirt:libvirt &&

OPTS+=" -Ddriver_secrets=enabled \
        -Ddriver_libvirtd=enabled \
        -Ddriver_interface=enabled \
        -Dinit_script=none \
        -Drunstatedir=/run \
        -Ddocs=disabled \
        -Dtests=disabled \
        -Dwireshark_dissector=disabled \
        -Ddriver_qemu=enabled \
        -Dqemu_user=qemu \
        -Dqemu_group=qemu"

if module_installed systemd; then
   OPTS+=" -Dinit_script=systemd"
fi &&

default_meson_config &&

#gcc: error: unrecognized command-line option '-R'
sedit 's:-R:-Wl,-rpath,/...:' $MODULE-$VERSION/build.ninja &&

default_meson_build

# Fix permission
chmod 600 /etc/libvirt/nwfilter/*.xml /etc/libvirt/qemu/networks/default.xml
