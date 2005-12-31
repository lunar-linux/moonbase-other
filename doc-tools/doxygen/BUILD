(

    if  query  "Enable doxywizard GUI? " y; then
      OPTS="$OPTS --with-doxywizard"
    else
      OPTS="$OPTS --without-doxywizard"
    fi



    if [ -f src/Makefile ]; then
      message "${MESSAGE_COLOR}Makefile's detected, doing make distclean before compiling${DEFAULT_COLOR}" &&
      ./configure &&
      make distclean
    fi &&

    ./configure --platform linux-g++        \
                --prefix /usr               \
                --install /usr/bin/install  \
                $OPTS                      &&

    make             &&
    if which python 2> /dev/null 1>&2; then
       make docs     
    fi               &&
    prepare_install  &&
    make install

) > $C_FIFO 2>&1
