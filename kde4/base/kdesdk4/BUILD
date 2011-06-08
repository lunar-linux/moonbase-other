(

# The scripts/makeobj conflicts with our module of the same name; both provide the same
# purpose so this one will be deleted. This sed's out makeobj so it does not get installed
# to /usr/bin.
  sedit "s:makeobj::" scripts/CMakeLists.txt &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build
  
) > $C_FIFO 2>&1
