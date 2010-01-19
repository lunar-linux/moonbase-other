(
    # Don't install last and last.1 manpage - already in sysvinit module
    sedit '/^bin_PROGRAMS/ s/last//; /^man_MANS/ s/last.1//' Makefile.am Makefile.in  &&
    ./configure --prefix=/usr                \
                --enable-linux-multiformat  &&

    default_make

) > $C_FIFO 2>&1
