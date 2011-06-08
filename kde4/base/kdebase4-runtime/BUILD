(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build &&
  
 # This used to be installed by kdelibs4 but will be over written by 
 # kdebase4-runtime causing a conflict. So lets just move it here from 
 # kdelibs4 and be done with it.

  install -m0755 $SCRIPT_DIRECTORY/kde4 /usr/bin/

) > $C_FIFO 2>&1
