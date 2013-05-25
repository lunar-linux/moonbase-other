  patch_it $SOURCE2 1 &&

# fix build with gcc 4.8 - this is fixed in 0.48.5
  sedit "s:commands_toolbox,;:commands_toolbox;:" src/widgets/desktop-widget.h &&

  CXXFLAGS+=" -fpermissive" &&

  default_build &&

  gather_docs HACKING
