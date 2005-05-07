(

    EMACSDIR=/usr/share/emacs/site-lisp       &&
    cat $SOURCE_CACHE/psgml-init.el.in | sed "s?\@EMACSDIR\@/\@NAME\@?$EMACSDIR/$MODULE?" > psgml-init.el                                             &&
    default_config                            &&
    cp *.el       $EMACSDIR                   &&
    make                                      &&
    prepare_install                           &&
    make install                              &&
    make install-info
    
) > $C_FIFO 2>&1
