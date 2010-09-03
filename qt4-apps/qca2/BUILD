(

  . /etc/profile.d/qt4.rc &&

  sedit "s/^WHICH=.*/WHICH=which/" configure &&

  ./configure --prefix=${MODULE_PREFIX} &&

  default_make

) > $C_FIFO 2>&1
