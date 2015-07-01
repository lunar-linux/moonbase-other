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
