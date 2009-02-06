(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib

  if module_installed alsa-lib; then
  OPTS="$OPTS --with-alsa "
  fi &&

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
               --enable-final                      \
               --enable-sendfile                   \
               --enable-mitshm                     \
               $OPTS                              &&

  if [[ "$APIDOX" == "y" ]]; then
    make apidox
  fi &&

  default_make

) > $C_FIFO 2>&1
