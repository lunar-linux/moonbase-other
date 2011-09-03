(

# Accounting for the different file used to determine jpeg version.
  if module_installed libjpeg-turbo ; then
    patch_it $SOURCE2 0
  fi &&

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&

  default_cmake_build

) > $C_FIFO 2>&1
