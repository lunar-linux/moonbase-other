OPTS+=" --enable-libudev \
        --enable-filter \
        --enable-ipcdir=/run/pcscd \
        --enable-usbdropdir=/usr/lib/pcsc/drivers \
        --with-systemdsystemunitdir=$(pkg-config systemd --variable=systemdsystemunitdir)" 

default_build &&
install -dm 0755 /usr/lib/pcsc/drivers 
