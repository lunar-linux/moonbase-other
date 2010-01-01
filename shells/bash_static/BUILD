(

    bad_flags -malign-double

    patch_it $SOURCE2 0 &&

    OPTS+=" --bindir=/bin                 \
            --without-bash-malloc         \
            --without-installed-readline  \
            --with-curses                 \
            --enable-static-link          \
            --disable-profiling"         &&

    default_config   &&
    make version.h   &&
    make             &&
    prepare_install  &&
    cp bash /bin/bash_static

) > $C_FIFO 2>&1
