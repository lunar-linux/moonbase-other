(

  if module_installed doxygen
  then
    ./gendoc
  fi

  ./autogen.sh --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MOUDLE_PREFIX/share/man   \
               $OPTS                               &&

   default_build

) > $C_FIFO 2>&1
