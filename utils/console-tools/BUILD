unset CC CXX
(

  sedit "s/doc//"       Makefile.am  &&
  sedit "s/doc//"       Makefile.in  &&
  sedit "s/examples//"  Makefile.am  &&
  sedit "s/examples//"  Makefile.in  &&

  patch -p1 < $SCRIPT_DIRECTORY/bootstrap.0.2.3.patch &&
  ./configure  --host=$BUILD           \
               --mandir=/usr/share/man \
               --prefix=/usr           &&
  make                                 &&
  prepare_install                      &&
  make    install                      &&


  # Install man pages.

    for  (( COUNT=1 ; COUNT < 9 ; COUNT++ ));  do
      cp  doc/man/*.$COUNT  /usr/share/man/man$COUNT  2> /dev/null
      true
    done

) > $C_FIFO 2>&1
