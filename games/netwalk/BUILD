(
    sedit 's/\/usr\/share\/netwalk/\/usr\/games\/share\/netwalk/' sharedir.h &&

    make                                               &&
    prepare_install                                    &&
    install -m 755 netwalk /usr/games                  &&
    install -d /usr/games/share/netwalk                &&
    install -m 644 Vera.ttf /usr/games/share/netwalk/

) > $C_FIFO 2>&1

