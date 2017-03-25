# It doesn't like an out of source build with our current version of cmake.
# Instead of screwing around with a patch, just do this and recheck on it next bump.
    cmake . -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
            -DCMAKE_BUILD_TYPE=RELEASE \
            $OPTS &&

  default_make
