(

   ./configure  --prefix=/usr                           \
                --x-includes=/usr/X11R6/include         \
                --x-libraries=/usr/X11R6/lib            \
                --with-kernel=/usr/src/linux            \
                --enable-usb-zero-packet                \
                --enable-uart-h4                        \
                --enable-uart-bcsp                      \
                --enable-uart-bcsp-txcrc                \
                --enable-bnep-orig                      \
                --enable-bnep-test                      \
                $OPTS                                  &&
    default_make

) > $C_FIFO 2>&1
