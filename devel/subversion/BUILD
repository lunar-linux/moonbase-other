(

  if in_depends $MODULE sun-jdk; then
    JAVA_HOME=$(expr /usr/lib/jdk*)
    OPTS+=" --with-jdk=$JAVA_HOME"
    BINDINGS_MAKE+=" javahl"
    BINDINGS_INSTALL+=" install-javahl"
  elif in_depends $MODULE j2sdk; then
    JAVA_HOME=$(expr /usr/lib/j2sdk*)
    OPTS+=" --with-jdk=$JAVA_HOME"
    BINDINGS_MAKE+=" javahl"
    BINDINGS_INSTALL+=" install-javahl"
  fi        

  OPTS="$OPTS --disable-neon-version-check --with-neon=`neon-config --prefix` --with-apr=`which apr-$(installed_version apr | cut -d. -f1)-config` --with-apr-util=`which apu-$(installed_version apr-util | cut -d. -f1)-config`"

  if in_depends $MODULE swig ; then
    if module_installed perl; then
      BINDINGS_MAKE="$BINDINGS_MAKE swig-pl"
      BINDINGS_INSTALL="$BINDINGS_INSTALL install-swig-pl"
    fi
    if module_installed Python; then
      BINDINGS_MAKE="$BINDINGS_MAKE swig-py"
      BINDINGS_INSTALL="$BINDINGS_INSTALL install-swig-py"
    fi
    if module_installed ruby; then
      BINDINGS_MAKE="$BINDINGS_MAKE swig-rb"
      BINDINGS_INSTALL="$BINDINGS_INSTALL install-swig-rb"
    fi
  fi

  if [ -n "$BINDINGS_MAKE" ]; then
    default_config &&
    make &&
    make $BINDINGS_MAKE &&
    prepare_install &&
    make install &&
    make $BINDINGS_INSTALL &&
    if module_installed Python; then
      ln -sf /usr/lib/svn-python/{svn,libsvn} /usr/lib/python$(installed_version Python | cut -d. -f1,2)/site-packages
    fi
  else
    default_build
  fi

) > $C_FIFO 2>&1
