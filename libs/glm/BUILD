# For unknown reasons they removed cmake install scripts
# https://github.com/g-truc/glm/commit/5f352ecce21bb1ab37fa56fac0f383c779b351a3
mkdir -p  /usr/lib/cmake/glm &&

prepare_install &&

cp -r glm /usr/include/ &&
cp -r doc /usr/share/doc/glm &&

sed "s/@VERSION@/$VERSION/" $SCRIPT_DIRECTORY/glm.pc.in > /usr/lib/pkgconfig/glm.pc &&
sed "s/@VERSION@/$VERSION/" $SCRIPT_DIRECTORY/glmConfigVersion.cmake.in > /usr/lib/cmake/glm/glmConfigVersion.cmake &&
sed "s/@VERSION@/$VERSION/" $SCRIPT_DIRECTORY/glmConfig.cmake.in > /usr/lib/cmake/glm/glmConfig.cmake &&
install -Dm644 $SCRIPT_DIRECTORY/glmTargets.cmake /usr/lib/cmake/glm/glmTargets.cmake
