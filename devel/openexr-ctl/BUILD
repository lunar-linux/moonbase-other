(

  cd .. &&
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  patch_it $SOURCE_CACHE/$SOURCE3 0 &&
  patch_it $SOURCE_CACHE/$SOURCE4 0 &&
  cd $SOURCE_DIRECTORY &&

#  sed -i "68i #include <cstdlib> \n #include <cstring>" exr_ctl_exr/applyCtl.cpp &&

  default_build

) > $C_FIFO 2>&1
