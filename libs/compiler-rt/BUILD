OPTS+=" -G Ninja"
__DEST=${SOURCE_DIRECTORY}/__inst

default_cmake_config &&
ninja &&
DESTDIR=$__DEST ninja install &&
mkdir -p ${__DEST}/usr/lib/clang/${VERSION}/{lib,share} &&
mv "${__DEST}"/usr/lib/{linux,clang/${VERSION}/lib/} &&
mv "${__DEST}"/usr/{share/*.txt,lib/clang/${VERSION}/share/}

prepare_install &&
cp -rf --remove-destination $__DEST/* /
