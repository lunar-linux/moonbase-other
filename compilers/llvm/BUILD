OPTS+=" -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_BUILD_DOCS=ON \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DBUILD_SHARED_LIBS=ON" &&

# don't run doxygen at build AND install time
OPTS+=" -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON" &&

TARGETS=X86 &&
if [[ "$USE_AMDGPU" = "y" ]]; then
  TARGETS+=";AMDGPU"
fi &&
OPTS+=" -DLLVM_TARGETS_TO_BUILD=${TARGETS}" &&

default_cmake_build
