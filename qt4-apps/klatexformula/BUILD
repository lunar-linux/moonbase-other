(

  . /etc/profile.d/qt4.rc &&

  qmake PREFIX=$MODULE_PREFIX          \
        INSTALLPREFIX=$MODULE_PREFIX   \
        BACKEND_SHAREDORSTATIC=shared  \
        $OPTS                         &&

  default_make


) > $C_FIFO 2>&1
