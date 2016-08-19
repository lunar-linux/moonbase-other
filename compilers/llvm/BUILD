# disabled for now in Lunar
OPTS+=" -DLLVM_ENABLE_SPHINX=OFF" &&

OPTS+=" -DLLVM_ENABLE_RTTI=ON \
        -DBUILD_SHARED_LIBS=ON" &&

# automatically build enabled docs
OPTS+=" -DLLVM_BUILD_DOCS=ON" &&

# don't run doxygen at build AND install time
OPTS+=" -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON" &&

TARGETS=X86 &&
if [[ "$USE_AMDGPU" = "y" ]]; then
  TARGETS+=";AMDGPU"
fi &&
OPTS+=" -DLLVM_TARGETS_TO_BUILD=${TARGETS}" &&

default_cmake_build &&

# Move analyzer scripts out of /usr/libexec
mv /usr/libexec/{ccc,c++}-analyzer /usr/lib/clang/ &&
sedit 's|libexec|lib/clang|' /usr/bin/scan-build &&
rmdir /usr/libexec
