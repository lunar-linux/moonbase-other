(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  CFLAGS=`echo $CFLAGS | sed "s/-ffast-math//"`
  CXXFLAGS=`echo $CXXFLAGS | sed "s/-ffast-math//"`
  
  CFLAGS=`echo $CFLAGS | sed "s/-O3/-O2/"`
  CXXFLAGS=`echo $CXXFLAGS | sed "s/-O3/-O2/"`
  
  default_build
 
) > $C_FIFO 2>&1
