(

  sedit "s/acpixtract/acpixtract\ madt/" Makefile &&
  sedit "s/^madt/all/" madt/Makefile &&
  sedit "s/\ :/:/" turbostat/Makefile &&
  sedit "s/^turbostat/all/" turbostat/Makefile &&
  sedit "s/turbostat.c/turbostat.c\n\tcc -o turbostat turbostat.c\n/" turbostat/Makefile &&

  make &&
  prepare_install &&
  make -C turbostat install &&
  install -m755 acpidump/acpidump /usr/bin/ &&
  install -m755 madt/madt /usr/bin/

  # Renamed, to prevent conflict with /usr/bin/acpixtract from iasl module
  # Do not install - this release is from year 2006 - in iasl module you have 2011 release
  #install -m755 acpixtract/acpixtract /usr/bin/acpixtract-$MODULE

) > $C_FIFO 2>&1
