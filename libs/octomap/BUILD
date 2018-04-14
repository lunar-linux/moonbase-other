sedit 's/iewer-qt4/iewer-qt5/g' octovis/CMakeModules/FindQGLViewer.cmake &&
sedit 's:libQGLViewer.so:libQGLViewer-qt5.so:g' octovis/CMakeModules/FindQGLViewer.cmake &&


OPTS+=" -DCMAKE_BUILD_TYPE=RELEASE  \
        -DOCTOVIS_QT5=ON            \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_DYNAMICETD3D_SUBPROJECT=ON \
        -DBUILD_OCTOVIS_SUBPROJECT=ON \
        -DQGLViewer_LIBRARY_DIR_OTHER=/usr/lib/libQGLViewer-qt5.so \
        -DQGLViewer_INCLUDE_DIR=/usr/include/QGLViewer" &&

pushd $MODULE &&
cmake $OPTS . &&
default_make &&
popd &&


pushd octovis &&
sedit 's:${PACKAGE_PREFIX_DIR}:/usr:g' ../octomap/lib/cmake/octomap/octomap-config.cmake &&
sedit 's:updateGL:update:g' src/ViewerGui.cpp src/ViewerWidget.cpp &&
cmake $OPTS -Doctomap_DIR=octomap/lib/cmake/octomap. &&
default_make &&
popd
