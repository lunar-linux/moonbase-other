cd octomap &&

cmake . -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release $OPTS &&
default_make &&

cd ../octovis &&

if module_installed libglvnd ; then
  OPTS+=" -DQGLViewer_FOUND=ON"
fi &&

cmake . -DCMAKE_INSTALL_PREFIX=/usr  \
        -DCMAKE_BUILD_TYPE=Release   \
        -Doctomap_DIR=/usr/share/octomap \
        $OPTS &&

default_make
