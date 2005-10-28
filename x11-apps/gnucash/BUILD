(
  # Remove -funroll-loops as it causes gcc-3.2 to give internal compiler errors with gnucash
  bad_flags '-funroll-loops' '-fomit-frame-pointer' '-fno-inline'
  export CFLAGS CXXFLAGS CCOPT COPT      &&

  default_build

) > $C_FIFO 2>&1
