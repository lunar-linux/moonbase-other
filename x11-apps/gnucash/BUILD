(
  # Remove -funroll-loops as it causes gcc-3.2 to give internal compiler errors with gnucash
  CFLAGS=${CFLAGS//-funroll-loops/}      &&
  CXXFLAGS=${CXXFLAGS//-funroll-loops/}  &&
  CCOPT=${CCOPT//-funroll-loops/}        &&
  COPT=${COPT//-funroll-loops/}          &&
  export CFLAGS CXXFLAGS CCOPT COPT      &&
  sedit "s/1\.3\.0/1\.3\.2/" configure   &&
  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  for FILE in `find . -iname "Makefile"`
  do
    sedit "s:-I/usr/include$::" ${FILE}
    sedit "s:-I/usr/include ::" ${FILE}
  done                                   && 
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
