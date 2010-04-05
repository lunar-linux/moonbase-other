(

  . /etc/profile.d/qt4.rc

# A qucik gcc-4.4.1 hack. Revisit when this module gets a version bump
  sed -i "33i #include <cstdio>" generator/parser/rpp/pp.h &&

  cd generator     &&
  qmake            &&
  make release     &&
  ./generator      &&

  cd ../qtbindings &&
  qmake            &&
  make             &&

  prepare_install  &&
  install ../plugins/script/* $QTDIR/plugins/script/

) > $C_FIFO 2>&1
