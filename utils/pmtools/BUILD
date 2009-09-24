(

  sedit "s/acpixtract/acpixtract\ madt/" Makefile &&
  sedit "s/^madt/all/" madt/Makefile &&

  make &&
  prepare_install &&

  install -m755 acpidump/acpidump /usr/bin/ &&
  install -m755 madt/madt /usr/bin/ &&

  # Renamed, to prevent conflict with /usr/bin/acpixtract from iasl module
  install -m755 acpixtract/acpixtract /usr/bin/acpixtract-$MODULE

) > $C_FIFO 2>&1
