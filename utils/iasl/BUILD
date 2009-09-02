(

  # Have to "make clean" to make all executables compile, so have to
  # move each executable out of the way before it is deleted by "make clean"!
  mkdir exes &&
  cd compiler          && make && mv iasl          ../exes/ && make clean &&
  cd ../tools/acpiexec && make && mv acpiexec   ../../exes/ && make clean &&
  cd ../acpisrc        && make && mv acpisrc    ../../exes/ && make clean &&
  cd ../acpixtract     && make && mv acpixtract ../../exes/ && make clean &&
  cd ../.. &&

  prepare_install &&

  install -m 755 exes/iasl       /usr/bin/ &&
  install -m 755 exes/acpisrc    /usr/bin/ &&
  install -m 755 exes/acpixtract /usr/bin/ &&
  install -m 755 exes/acpiexec   /usr/bin/ &&

  gather_docs changes.txt

) > $C_FIFO 2>&1
