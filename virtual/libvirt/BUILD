add_priv_user qemu -G kvm &&

OPTS+=" --disable-static \
        --without-wireshark-dissector \
        --without-hal \
        --without-netcf \
        --with-udev \
        --with-yajl \
        --with-network \
        --with-secrets \
        --with-libvirtd \
        --with-interface \
        --with-qemu-user=qemu \
        --with-qemu-group=kvm"

#        --with-init-script=none"

if module_installed systemd; then
  OPTS+=" --with-init-script=systemd"
fi

default_build
