export PYTHONDONTWRITEBYTECODE=1 &&

add_priv_user qemu:qemu &&
add_priv_user libvirt:libvirt &&

OPTS+=" -Dnetcf=disabled \
        -Dselinux=disabled \
        -Dopenwsman=disabled \
        -Dapparmor=disabled \
        -Dapparmor_profiles=disabled \
        -Ddriver_bhyve=disabled \
        -Ddriver_hyperv=disabled \
        -Ddriver_libxl=disabled \
        -Ddriver_vz=disabled \
        -Dsanlock=disabled \
        -Dsecdriver_apparmor=disabled \
        -Dsecdriver_selinux=disabled \
        -Dstorage_vstorage=disabled \
        -Ddtrace=disabled \
        -Dnumad=disabled \
        -Dstorage_rbd=disabled
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
