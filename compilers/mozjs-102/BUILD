export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none

cat > ./mozconfig <<END
ac_add_options --enable-application=js
ac_add_options --prefix=/usr
ac_add_options --enable-release
ac_add_options --enable-optimize
ac_add_options --enable-rust-simd
ac_add_options --enable-linker=lld
ac_add_options --disable-unified-build
ac_add_options --with-system-icu
ac_add_options --disable-bootstrap
ac_add_options --disable-debug
ac_add_options --disable-debug-symbols
ac_add_options --disable-jemalloc
ac_add_options --enable-strip
ac_add_options --with-system-zlib
ac_add_options --enable-shared-js
ac_add_options --enable-tests
ac_add_options --with-intl-api
ac_add_options --enable-readline
mk_add_options MOZ_OBJDIR=$SOURCE_DIRECTORY/obj
mk_add_options MOZ_NOSPAM=1
END

export CC=clang
export CXX=clang++
export AR=llvm-ar
export NM=llvm-nm
export RANLIB=llvm-ranlib

if [[ $STATIC_LIB == "n" ]]; then
sedit 's/ifneq (,$(REAL_LIBRARY))/ifneq (libjs_static.a,$(REAL_LIBRARY))/' ./js/src/build/Makefile.in
fi &&

if module_installed ccache; then
  if [[ $ENABLE_CCACHE == "y" ]]; then
  echo "ac_add_options --enable-ccache" >> ./mozconfig
  fi
fi  &&

./mach -v build &&
prepare_install &&
cd $SOURCE_DIRECTORY/obj &&
make DESTDIR=/ install
