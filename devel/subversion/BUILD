(

  OPTS="$OPTS --with-ssl --with-neon=`neon-config --prefix`"
  default_build &&
  if in_depends $MODULE swig ; then
    make swig-py install-swig-py
    ln -s /usr/lib/svn-python/{svn,libsvn} /usr/lib/python$(installed_version Python | cut -d. -f1,2)/site-packages
  fi

) > $C_FIFO 2>&1
