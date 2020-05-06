add_priv_user qemu:qemu &&

echo "BUILD_DIRECTORY->"$BUILD_DIRECTORY
echo "SOURCE_DIRECTORY->"$SOURCE_DIRECTORY

OPTS+=" --disable-static \
        --with-network \
        --with-secrets \
        --with-libvirtd \
        --with-interface \
        --without-hal \
        --without-netcf \
        --with-init-script=none \
        --with-runstatedir=/run \
        --without-wireshark-dissector"

if module_installed systemd; then
   OPTS+=" --with-init-script=systemd"
fi

mkdir build && cd build &&
../configure --prefix=/usr $OPTS &&
default_make &&

# Fix permission
chmod 600 /etc/libvirt/nwfilter/*.xml /etc/libvirt/qemu/networks/default.xml
