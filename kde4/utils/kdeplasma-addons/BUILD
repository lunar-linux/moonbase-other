(

# Fixes a build issue with qwt-6.0.x
  sedit "s:setData:setSamples:" applets/kdeobservatory/src/commithistoryview.cpp &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build
  
) > $C_FIFO 2>&1
