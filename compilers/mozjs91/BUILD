export MACH_USE_SYSTEM_PYTHON=1

cat > ./mozconfig <<END
ac_add_options --enable-application=js
ac_add_options --prefix=/usr
ac_add_options --enable-release
ac_add_options --enable-optimize
ac_add_options --disable-rust-simd
ac_add_options --disable-bootstrap
ac_add_options --disable-debug
ac_add_options --disable-debug-symbols
ac_add_options --disable-jemalloc
ac_add_options --disable-strip
ac_add_options --with-system-zlib
ac_add_options --without-system-icu
ac_add_options --with-system-nspr
ac_add_options --enable-shared-js
ac_add_options --enable-tests
ac_add_options --with-intl-api
ac_add_options --enable-readline
mk_add_options MOZ_OBJDIR=$SOURCE_DIRECTORY/obj
mk_add_options MOZ_NOSPAM=1
END

if in_depends $MODULE lld; then
  export CC=clang
  export CXX=clang++
  export AR=llvm-ar
  export NM=llvm-nm
  export RANLIB=llvm-ranlib
echo "ac_add_options --enable-linker=lld" >> ./mozconfig
fi &&

if [[ $STATIC_LIB == "n" ]]; then
sedit 's/ifneq (,$(REAL_LIBRARY))/ifneq (libjs_static.a,$(REAL_LIBRARY))/' ./js/src/build/Makefile.in
fi &&

if module_installed ccache; then
  if [[ $ENABLE_CCACHE == "y" ]]; then
  echo "ac_add_options --enable-ccache" >> ./mozconfig
  fi
fi  &&

./mach build &&
prepare_install &&
cd $SOURCE_DIRECTORY/obj &&
make DESTDIR=/ install
