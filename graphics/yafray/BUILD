(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  sedit 's:char \*ext:const char \*ext:' src/shaders/basictex.cc &&
  sedit "s:/usr/local:/usr:" SConstruct
  sedit "s:/usr/local:/usr:" linux-settings.py

  scons arch=$CPU   &&

  prepare_install   &&

  scons arch=$CPU install

) > $C_FIFO 2>&1
