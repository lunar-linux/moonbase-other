(
  # Remove -funroll-loops as it causes gcc-3.2 to give internal compiler errors with gnucash
  CFLAGS=${CFLAGS//-funroll-loops/}      &&
  CXXFLAGS=${CXXFLAGS//-funroll-loops/}  &&
  CCOPT=${CCOPT//-funroll-loops/}        &&
  COPT=${COPT//-funroll-loops/}          &&
  export CFLAGS CXXFLAGS CCOPT COPT      &&

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
