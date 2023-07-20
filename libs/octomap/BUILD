cd octomap &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Doctomap_DIR=/usr/share/octomap"

cmake . $OPTS &&
default_make &&

cd ../octovis &&

if module_installed libglvnd ; then
  OPTS+=" -DQGLViewer_FOUND=ON"
fi &&

cmake . $OPTS &&
default_make
