(
#  export LD_LIBRARY_PATH=$QTDIR/lib:$KDEDIR/lib
#  export PATH=$QTDIR/bin:$KDEDIR/bin:$PATH
#  export LD_RUN_PATH=$KDEDIR/lib:$KDEDIR/lib/kde3

#  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
#               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
#               --disable-debug                     \
#	       --enable-final                      \
#               $OPTS                              &&

#  default_make

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  default_build

) > $C_FIFO 2>&1
