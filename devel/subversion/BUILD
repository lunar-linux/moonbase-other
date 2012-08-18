(

  # fixes problems with neon
  LDFLAGS+=" -lgcrypt" &&

  # fix dependency bug in 1.7.6 (see r1374198)
  sedit "370 s/install = tools/install = apache-mod/" build.conf &&

  if in_depends $MODULE sun-jdk; then
    . /etc/profile.d/sun-jdk.rc &&
    OPTS+=" --with-jdk=$JAVA_HOME" &&
    BINDINGS_MAKE+=" javahl"
  fi

  OPTS+=" --disable-static --with-neon=`neon-config --prefix` --with-apr=`which apr-$(installed_version apr | cut -d. -f1)-config` --with-apr-util=`which apu-$(installed_version apr-util | cut -d. -f1)-config`" &&

  if in_depends $MODULE swig ; then
    if module_installed perl; then
      BINDINGS_MAKE+=" swig-pl"
    fi &&

    if module_installed Python; then
      BINDINGS_MAKE+=" swig-py"
    fi &&

    if module_installed ruby; then
      BINDINGS_MAKE+=" swig-rb"
    fi
  fi &&

  if [ -n "$BINDINGS_MAKE" ]; then
    default_config &&
    make &&
    make $BINDINGS_MAKE &&
    prepare_install &&
    make install &&
    make ${BINDINGS_MAKE// / install-} &&
    if module_installed Python; then
      ln -sf /usr/lib/svn-python/{svn,libsvn} /usr/lib/python$(installed_version Python | cut -d. -f1,2)/site-packages
    fi
  else
    default_build
  fi

) > $C_FIFO 2>&1
