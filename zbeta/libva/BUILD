(

  # Don't install /usr/bin/test_01 etc.
  patch_it debian/patches/101_dont_install_test_programs.patch 1 &&

  autoreconf -fi &&

  default_build

) > $C_FIFO 2>&1
