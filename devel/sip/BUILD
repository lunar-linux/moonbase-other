(

  export QTDIR="/opt/lunar/qt/3"

  prepare_install                      &&
  python build.py  -b /usr/bin         \
                   -q /opt/lunar/qt/3  \
                   $OPTS               &&

  make                                 &&
  make  install

) > $C_FIFO 2>&1
