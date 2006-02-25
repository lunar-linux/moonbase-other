(

    EMACSDIR=/usr/share/emacs/site-lisp       &&

    default_build                             $$
    make $OPTS                                &&
    prepare_install                           &&
    make lispdir=$EMACSDIR install

) > $C_FIFO 2>&1
