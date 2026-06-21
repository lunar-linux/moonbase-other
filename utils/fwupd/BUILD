OPTS+=" -D b_lto=false \
        -D docs=disabled \
        -D tests=false \
        -D supported_build=enabled \
        -D systemd_unit_user=fwupd \
        -D efi_binary=false"

default_meson_build

add_priv_user fwupd:fwupd -d /dev/null -s /usr/bin/false &&
add_priv_group fwupd
