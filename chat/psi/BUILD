(

    . /etc/profile.d/qt4.rc
    # Stupid which which function
    sedit "s/^WHICH=.*/WHICH=which/" configure &&

    ./configure --prefix=/usr  \
                --datadir=/usr/share \
                $OPTS  &&
    default_make

) > $C_FIFO 2>&1
