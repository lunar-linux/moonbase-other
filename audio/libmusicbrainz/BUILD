(

  patch_it $SOURCE2 0  &&

  OPTS="$OPTS --enable-cpp-headers"

  default_build  &&

  if module_installed ctypes ; then
        cd python;
        python setup.py build;
        python setup.py install;
  fi

) > $C_FIFO 2>&1
