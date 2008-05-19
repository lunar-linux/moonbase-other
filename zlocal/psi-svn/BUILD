(

  . /etc/profile.d/qt4.rc &&

  sedit 's/WHICH=\$WHICH/WHICH=which/g' configure &&

  ./configure --prefix=/usr &&

  default_make

) > $C_FIFO 2>&1
