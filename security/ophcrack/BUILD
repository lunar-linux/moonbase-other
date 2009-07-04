(

  if in_depends $MODULE qwt; then
    . /etc/profile.d/qt4.rc
    QWT=`lvu version qwt | cut -d- -f3`
    OPTS="--enable-gui"
     else
    OPTS="--disable-gui --disable-graph"
  fi &&

  default_build

) > $C_FIFO 2>&1
