(

    EMACSDIR=/usr/share/emacs/site-lisp       &&
    cat psgml-init.el.in | sedit "s/@EMACSDIR@\/@NAME@/$EMACSDIR\/$MODULE/" > psgml-init.el                                             &&
    default_config                            &&
    cp *.el       $EMACSDIR                   &&
    make                                      &&
    prepare_install                           &&
    make install                              &&
    make install-info
    
) > $C_FIFO 2>&1
