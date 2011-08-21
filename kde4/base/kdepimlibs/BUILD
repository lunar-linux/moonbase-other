(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

# Setting these to OFF does nothing but create breakage, hardcoding to ON.
  OPTS+=" -DKDEPIM_NO_KCAL=ON -DKDEPIM_NO_KRESOURCES=ON -DKDEPIM_ONLY_KLEO=ON" &&

  default_cmake_build            &&

# It fails to install most of these headers.
  for i in `ls *.h` ; do 
     install -m644 ../kabc/$i /usr/include/kabc/ ;
  done

) > $C_FIFO 2>&1
