(

    default_build                           &&
    if    module_installed xfree86
    then  OPTS="$OPTS --with-screen=x11"    &&
          default_config                    &&
          make                              &&
          make install
    fi

) > $C_FIFO 2>&1
