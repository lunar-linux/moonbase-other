cd ghc-bin &&

# prepare binaries for use
./configure --prefix=$SOURCE_DIRECTORY/install &&
make install &&

# compile the sources using these binaries
OPTS+=" --with-ghc=$SOURCE_DIRECTORY/install/bin/ghc" &&
cd .. &&

cd ghc-$VERSION &&

default_config &&

cp mk/build.mk{.sample,} &&

if in_depends $MODULE llvm; then
   sedit "s:#\(BuildFlavour = perf-llvm\)$:\1:" mk/build.mk
else
   sedit "s:#\(BuildFlavour = perf\)$:\1:" mk/build.mk
fi &&

default_make &&

# these are for some reason not created automatically
for f in /usr/bin/*-*-*-{ghc,ghc-$VERSION,ghc-pkg,ghc-pkg-$VERSION,haddock-ghc-$VERSION,hsc2hs,runghc-$VERSION}; do
   file=$(basename "$f")
   ln -s $file /usr/bin/${file#*-*-*-}
done
