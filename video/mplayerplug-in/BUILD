(    
    ./configure --prefix=/usr \
    --with-gecko-sdk=$SOURCE_DIRECTORY/gecko-sdk \
    --with-mozilla-home=/opt/lunar \
    --enable-gmp \
    --with-x &&
# mozilla home is only needed to copy plugins
    make             &&
    prepare_install  &&
    mkdir -p /opt/lunar/plugins &&
    make install

) > $C_FIFO 2>&1
