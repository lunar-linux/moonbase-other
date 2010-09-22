(

  . /etc/profile.d/qt4.rc &&

# Fixes a 'call of overloaded 'QString(int)' is ambiguous' make failure.
  sedit 's:QString( 0 ):QString( "" ):' libs/hydrogen/src/song.cpp &&

  scons prefix=$QTDIR &&
  prepare_install &&
  scons install

) > $C_FIFO 2>&1
