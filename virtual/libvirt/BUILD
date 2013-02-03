
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

patch_it $SOURCE2 1 &&
default_build
