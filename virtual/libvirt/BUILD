
OPTS+=" --without-xen \
        --with-udev \
        --without-hal \
        --disable-static \
        --without-netcf \
        --with-interface \
        --with-network \
        --with-secrets \
        --with-storage-lvm \
        --with-yajl \
        --with-init-script=none"

add_priv_user qemu:qemu -G kvm &&

default_build
