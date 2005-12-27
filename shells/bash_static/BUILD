(

    # Apply WCONTINUED patch for glibc > 2.3.3  compliance
    unpack $SOURCE2 &&
    patch_it bash-patches/bash30-avoid_WCONTINUED 0 &&


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

