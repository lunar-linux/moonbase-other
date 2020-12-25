# compile the sources using the boostrap compiler
OPTS+=" --prefix=/usr \
        --host=$BUILD \
        --enable-unregisterised \
        --with-system-libffi"

export GHC=$SOURCE_DIRECTORY/install/bin/ghc

cp mk/build.mk{.sample,} &&

default_config &&

#python boot &&
./boot &&

if in_depends $MODULE llvm; then
   sedit "s:#\(BuildFlavour = perf-llvm\)$:\1:" mk/build.mk
else
   sedit "s:#\(BuildFlavour = perf\)$:\1:" mk/build.mk
fi &&

make -j1 &&
prepare_install &&
make -j1 install
