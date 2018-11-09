# compile the sources using the boostrap compiler
OPTS+=" --prefix=/usr \
        --host=$BUILD \
        --enable-unregisterised \
        --with-system-libffi \
        --with-ghc=$SOURCE_DIRECTORY/install/bin/ghc"

python boot &&

default_config &&

cp mk/build.mk{.sample,} &&

#if in_depends $MODULE llvm; then
#   sedit "s:#\(BuildFlavour = perf-llvm\)$:\1:" mk/build.mk
#else
   sedit "s:#\(BuildFlavour = perf\)$:\1:" mk/build.mk &&
#fi &&

make &&
prepare_install &&
make -j1 install
