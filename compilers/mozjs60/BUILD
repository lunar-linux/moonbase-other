mkdir -p $SOURCE_DIRECTORY/lunar_build &&
cd $SOURCE_DIRECTORY/lunar_build

if [[ $STATIC_LIB == "n" ]]; then
#  sedit 's/FORCE_STATIC_LIB = True/FORCE_STATIC_LIB = False/' ../js/src/build/moz.build
#  sedit 's/NO_EXPAND_LIBS = True/NO_EXPAND_LIBS = False/' ../js/src/build/moz.build
#  sedit "s/STATIC_LIBRARY_NAME = 'js_static'/#STATIC_LIBRARY_NAME =/" ../js/src/build/moz.build
#  sedit "s/'static:js'/'js'/" ../js/src/shell/moz.build
#  sedit "s/'static:js'/'js'/" ../js/src/jsapi-tests/moz.build
#  sedit "s/'static:js'/'js'/" ../js/src/gdb/moz.build
sedit 's/ifneq (,$(REAL_LIBRARY))/ifneq (libjs_static.a,$(REAL_LIBRARY))/' ../js/src/build/Makefile.in
fi &&

if [[ $ENABLE_SHELL == "n" ]]; then
  sedit 's|$(MAKE) -C shell install|#$(MAKE) -C shell install|' ../js/src/Makefile.in
  LOCAL_CONFIG=" --disable-js-shell"
else
  LOCAL_CONFIG=" --enable-js-shell"
fi &&

#do not build a debug version
#DEBUG_CONFIG="--disable-strip --enable-debug --enable-debug-symbols"
DEBUG_CONFIG="--enable-strip --disable-debug-symbols"

LOCAL_PACKAGES_CONFIG="--with-intl-api --with-system-zlib --with-system-icu --with-system-nspr --disable-jemalloc"

if module_installed ccache; then
  if [[ $ENABLE_CCACHE == "y" ]]; then
    message "Build mozjs with ccache support"
    LOCAL_PACKAGES_CONFIG+=" --with-ccache"
  fi
fi  &&

../js/src/configure --prefix=/usr \
${LOCAL_PACKAGES_CONFIG} \
${DEBUG_CONFIG} \
${LOCAL_CONFIG} \
${OPTS} &&

make &&
prepare_install &&
make install
