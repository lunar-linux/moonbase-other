add_priv_user qemu:qemu -G kvm &&

OPTS+=" --libexecdir=/usr/bin" &&

OPTS+=" --disable-static \
        --without-xen \
        --without-hal \
        --without-netcf \
        --with-udev \
        --with-yajl \
        --with-network \
        --with-secrets \
        --with-libvirtd \
        --with-interface \
        --with-init-script=none" &&

if module_installed systemd; then
  OPTS+=" --with-init-script=systemd"
fi &&

default_build


