(

        sedit 's/LFLAGS/LDFLAGS/g' Makefile &&
        sedit 's/^OPTLEVEL =/#OPTLEVEL =/' Makefile &&
        sedit 's/^CFLAGS =/CFLAGS +=/' Makefile &&
        sedit 's/^LDFLAGS =/LDFLAGS +=/' Makefile &&
        make all &&
        prepare_install &&
        make install_all BINDIR=/usr/bin MANDIR=/usr/share/man/man1

) > $C_FIFO 2>&1
