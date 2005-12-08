(
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
    patch_it $SOURCE2 1 &&
    patch_it $SOURCE3 1 &&
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
