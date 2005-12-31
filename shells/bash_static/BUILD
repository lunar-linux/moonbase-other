(

    bad_flags -malign-double

    OPTS=$OPTS" --bindir=/bin \
                --without-bash-malloc \
                --with-installed-readline \
                --with-curses \
                --enable-static-link"

    default_config                &&
    make version.h                &&
    make                          &&
    prepare_install               &&
    cp bash /bin/bash_static

) > $C_FIFO 2>&1

