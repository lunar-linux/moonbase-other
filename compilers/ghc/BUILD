### install the binary boostrap compiler
cd ghc-bin &&

# prepare binaries for use
./configure --prefix=$SOURCE_DIRECTORY/install &&
make install &&

### install the source compiler
cd $SOURCE_DIRECTORY &&

# compile the sources using these binaries
OPTS+=" --with-ghc=$SOURCE_DIRECTORY/install/bin/ghc" &&
OPTS+=" --enable-unregisterised" &&
OPTS+=" --host=$BUILD" &&

perl boot &&

default_config &&

cp mk/build.mk{.sample,} &&

#if in_depends $MODULE llvm; then
#   sedit "s:#\(BuildFlavour = perf-llvm\)$:\1:" mk/build.mk
#else
   sedit "s:#\(BuildFlavour = perf\)$:\1:" mk/build.mk &&
#fi &&

default_make
