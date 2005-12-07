(

  OPTS="$OPTS --with-ssl --with-neon=`neon-config --prefix`"
  if module_installed apache2 ; then
    OPTS="$OPTS --with-apr=/usr/bin/apr-1-config --with-apu=/usr/bin/apu-1-config"
	rm -rf apr apr-util
  fi
  default_build  &&
  if in_depends $MODULE swig ; then
    make swig-py install-swig-py
    ln -sf /usr/lib/svn-python/{svn,libsvn} /usr/lib/python$(installed_version Python | cut -d. -f1,2)/site-packages
  fi

) > $C_FIFO 2>&1
