add_priv_user qemu:qemu -G kvm &&

OPTS+=" --disable-static \
        --without-wireshark-dissector \
        --without-hal \
        --without-xen \
        --without-netcf \
        --with-udev \
        --with-network \
        --with-secrets \
        --with-libvirtd \
        --with-interface \
        --with-init-script=none"

if module_installed systemd; then
  OPTS+=" --with-init-script=systemd"
fi

default_build
