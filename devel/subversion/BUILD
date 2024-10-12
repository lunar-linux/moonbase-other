grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/' &&
# fixes problems with neon
LDFLAGS+=" -lgcrypt" &&

touch build/generator/swig/*.py &&
mv -v build-outputs.mk{,.old}   &&
./autogen.sh --release &&

# fix dependency bug in 1.7.6 (see r1374198)
sedit "370 s/install = tools/install = apache-mod/" build.conf &&

if in_depends $MODULE %JAVA_SDK; then
  source /etc/profile.d/sun-jdk.rc &&
  OPTS+=" --with-jdk=$JAVA_HOME"
fi &&

OPTS+=" --disable-static \
        --with-apr=`which apr-$(installed_version apr | cut -d. -f1)-config` \
        --with-apr-util=`which apu-$(installed_version apr-util | cut -d. -f1)-config`"

if in_depends $MODULE swig; then
  if module_installed perl; then
    BINDINGS_MAKE+=" swig-pl"
  fi &&

  if module_installed python; then
    BINDINGS_MAKE+=" swig-py"
  fi &&

  if module_installed ruby; then
    BINDINGS_MAKE+=" swig-rb"
  fi
fi &&

autoconf

if [ -n "$BINDINGS_MAKE" ]; then
  default_config &&
  # sun-jdk 10 removed javah
  sedit 's:/bin/javah:/bin/javac -h:g' Makefile &&
  make &&
  make $BINDINGS_MAKE &&
  prepare_install &&
  make install &&
  make ${BINDINGS_MAKE// / install-}
else
  default_build
fi
