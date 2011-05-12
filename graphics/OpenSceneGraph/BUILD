(

  sedit "s:xulrunner-js:mozilla-js:g" CMakeModules/FindXUL.cmake &&
  sedit "s:xulrunner-nspr:mozilla-nspr:g" CMakeModules/FindXUL.cmake &&
  sedit "s:xulrunner-nss:mozilla-nss:g" CMakeModules/FindXUL.cmake &&

  export XUL_INCLUDE_DIR=/usr/include/xulrunner-$(installed_version xulrunner) &&
  export XUL_LIBRARIES=/usr/lib/xulrunner-$(installed_version xulrunner) 

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
        -DCMAKE_BUILD_TYPE=RELEASE              \
        -Wno-dev                                \
        $OPTS .                                &&

  default_make

) > $C_FIFO 2>&1
