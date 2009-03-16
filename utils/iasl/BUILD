(

  make -C compiler &&
#  make -C tools/acpiexec &&
  make -C tools/acpixtract &&
  prepare_install &&

  install -m 755 compiler/iasl /usr/bin &&
#  install -m 755 tools/acpiexec/acpiexec /usr/bin &&
  install -m 755 tools/acpixtract/acpixtract /usr/bin

) > $C_FIFO 2>&1
