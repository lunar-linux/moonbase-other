(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  # Must be built out of tree otherwise it will break
  # at akonadi compilation. But does not have this file:
  mkdir -p cmake/modules &&
  touch cmake/modules/MacroEnsureOutOfSourceBuild.cmake &&
  # to trigger out of tree build on Lunar. So touch it.

  default_cmake_build

) > $C_FIFO 2>&1
