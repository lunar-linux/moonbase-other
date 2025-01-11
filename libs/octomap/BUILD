OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr"

cd octomap &&

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION &&

if module_installed libglvnd ; then
  OPTS+=" -DQGLViewer_FOUND=ON \
          -Doctomap_DIR=/usr/share/octomap \
          -DOCTOMAP_INCLUDE_DIRS=/usr/include/octomap"

  cd ../octovis &&

  cmake -B octovis-$VERSION -S . $OPTS &&
  cmake --build octovis-$VERSION &&

  prepare_install &&
  cmake --install octovis-$VERSION
fi
