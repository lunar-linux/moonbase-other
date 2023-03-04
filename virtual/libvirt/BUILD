add_priv_user qemu:qemu &&

OPTS+=" -Ddriver_secrets=enabled \
        -Ddriver_libvirtd=enabled \
        -Ddriver_interface=enabled \
        -Dinit_script=none \
        -Drunstatedir=/run \
        -Dwireshark_dissector=disabled"

if module_installed systemd; then
   OPTS+=" -Dinit_script=systemd"
fi &&

default_meson_build &&

# Fix permission
chmod 600 /etc/libvirt/nwfilter/*.xml /etc/libvirt/qemu/networks/default.xml
