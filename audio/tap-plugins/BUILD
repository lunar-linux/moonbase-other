(

  sedit "s:/usr/local:/usr:" Makefile &&

  # Use ladspa.h from LADSPA module
  # As in http://koji.fedoraproject.org/koji/packageinfo?packageID=5110
  rm ladspa.h &&
  ln -s /usr/include/ladspa.h . &&

  default_make

) > $C_FIFO 2>&1
