(
  cat $SCRIPT_DIRECTORY/divdi3.patch                |     patch -p1  &&
  cat $SCRIPT_DIRECTORY/glibc-2.2.5.patch           |     patch -p1  &&
  cat $SCRIPT_DIRECTORY/glibc-2.2.5-xdr.patch       |     patch -p1  &&
  #the ulrich.patch patch came from here: http://sources.redhat.com/ml/libc-hacker/2002-05/msg00031.html 
  cat $SCRIPT_DIRECTORY/ulrich.patch                |     patch -p0  &&
  cat $SCRIPT_DIRECTORY/glibc-2.2.5-getdents.patch  |     patch -p1  &&
  
  unset  LDFLAGS
  unset  CFLAGS
  unset  CXXFLAGS

  INSTALL_ROOT=$SOURCE_DIRECTORY/glibcroot

  sedit "s/ \-g/ \-g0 /g" Makeconfig

   cat > configparms <<- EOF
      prefix = /usr
      slibdir = /lib
      sysconfdir = /etc
      install_root = $INSTALL_ROOT
EOF

#--enable-oldest-abi
  ./configure  --host=$BUILD                          \
               --build=$BUILD                         \
               --enable-add-ons=linuxthreads          \
               --with-elf                             \
               --with-headers=/usr/src/linux/include  \
               --with-gd=no                           \
               --without-cvs                          \
               --enable-shared                        \
               --infodir=/usr/share/info              \
               --mandir=/usr/share/man                \
               $OPTS                                  &&
  make                                        &&
  make    install                             &&


  ldconfig $INSTALL_ROOT/lib                  &&
  ldconfig $INSTALL_ROOT/usr/lib              &&

  LD_LIBRARY_PATH="$INSTALL_ROOT/lib:$INSTALL_ROOT/usr/lib:"$LD_LIBRARY_PATH
  export LD_LIBRARY_PATH

  ln  -sf  $INSTALL_ROOT/lib/ld-$VERSION.so  /lib/ld-linux.so.2 &&

  prepare_install                             &&

  make install install_root=/                 &&

  rm -f /etc/ld.so.cache 2>/dev/null

  unset   LD_PRELOAD                          &&
  if  [  -z  "$GLIBC_LOCALES"  ];  then
    cat  $SCRIPT_DIRECTORY/locales  |
    while  read  LOCALE  DESCRIPTION;  do
      INPUTFILE=`echo  $LOCALE  |  cut  -d /  -f1`
        CHARMAP=`echo  $LOCALE  |  cut  -d /  -f2`
      mkdir  -p  /usr/lib/locale/$INPUTFILE
      echo "localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE"
            localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE
    done
    true
  else
    for  LOCALE  in  $GLIBC_LOCALES;  do
      INPUTFILE=`echo  $LOCALE  |  cut  -d /  -f1`
        CHARMAP=`echo  $LOCALE  |  cut  -d /  -f2`
      mkdir  -p  /usr/lib/locale/$INPUTFILE
      echo "localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE"
            localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE
    done
    true
  fi

) > $C_FIFO 2>&1  &&  ldconfig
