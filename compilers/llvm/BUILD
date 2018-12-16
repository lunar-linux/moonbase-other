OPTS+=" -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_BUILD_LLVM_DYLIB=ON \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DLLVM_ENABLE_DOXYGEN=OFF"

# don't run doxygen at build AND install time
OPTS+=" -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON"

TARGETS=X86 &&
if [[ "$USE_AMDGPU" = "y" ]]; then
  TARGETS+=";AMDGPU"
fi &&

OPTS+=" -DLLVM_TARGETS_TO_BUILD=${TARGETS};BPF"

default_cmake_build
