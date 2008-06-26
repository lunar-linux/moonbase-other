(

    default_build                       &&
    if [ "$USE_MOTIF" == "y" ]; then
      OPTS="$OPTS --with-screen=motif"  &&
      default_config                    &&
      make                              &&
      make install
    elif [ "$USE_X11" == "y" ]; then
      OPTS="$OPTS --with-screen=x11"    &&
      default_config                    &&
      make                              &&
      make install
    fi

) > $C_FIFO 2>&1
