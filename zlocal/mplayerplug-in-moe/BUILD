(    

    OPTS="$OPTS --with-gecko-sdk=$SOURCE_DIRECTORY/gecko-sdk \
          --with-mozilla-home=/opt/lunar \
          --enable-gmp --with-x" &&

    # mozilla home is only needed to copy plugins
    mkdir -p /opt/lunar/plugins &&

    default_build

) > $C_FIFO 2>&1
