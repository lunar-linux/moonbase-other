(

  # make -e does get it to compile with optimization, but it won't
  # finish compiling.  
  # /tmp/ccGHBM2E.s: Assembler messages:
  # /tmp/ccGHBM2E.s:76018: Error: Symbol .LEHB93198 already defined.
  # /tmp/ccGHBM2E.s:76019: Error: Symbol .LEHE93198 already defined.
  # /tmp/ccGHBM2E.s:76053: Error: Symbol .LEHB93198 already defined.
  # /tmp/ccGHBM2E.s:76064: Error: Symbol .LEHE93198 already defined.

  ./configure  --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info  &&
  make                        &&
  prepare_install             &&
  make    install            
#  mv  /usr/libexec/$MODULE-$VERSION/lib/*  /usr/lib

) > $C_FIFO 2>&1
