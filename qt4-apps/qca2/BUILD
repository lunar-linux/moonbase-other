(

  . /etc/profile.d/qt4.rc   
  sedit "s/^WHICH=.*/WHICH=which/" configure &&
  sedit "s:add_subdirectory(plugins)::" CMakeLists.txt &&

  ./configure --prefix=/usr &&
  default_make

) > $C_FIFO 2>&1
