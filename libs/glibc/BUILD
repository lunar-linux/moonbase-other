(
  CFLAGS=`echo $CFLAGS | sed s/-ffast-math//`
  CXXFLAGS=`echo $CXXFLAGS | sed s/-ffast-math//`

  INSTALL_ROOT=$SOURCE_DIRECTORY/glibcroot

  sedit "s/ \-g/ \-g0 /g" Makeconfig

   cat > configparms <<- EOF
      prefix = /usr
      slibdir = /lib
      sysconfdir = /etc
      install_root = $INSTALL_ROOT
EOF

  ./configure  --host=$BUILD                          \
               --build=$BUILD                         \
               --enable-kernel=current \
               --enable-add-ons=linuxthreads          \
               --with-elf                             \
               --with-headers=/usr/src/linux/include  \
               --with-gd=no                           \
               --without-cvs                          \
               --enable-shared                        \
               --infodir=/usr/share/info              \
               --mandir=/usr/share/man                \
               --prefix=/usr                \
               $OPTS                                  &&
  make                                        &&
  make    install                             &&


  ldconfig $INSTALL_ROOT/lib                  &&
  ldconfig $INSTALL_ROOT/usr/lib              &&

  LD_LIBRARY_PATH="$INSTALL_ROOT/lib:$INSTALL_ROOT/usr/lib:"$LD_LIBRARY_PATH
  export LD_LIBRARY_PATH

  rm -f /lib/ld-linux.so.2 &&
  sln  $INSTALL_ROOT/lib/ld-$VERSION.so  /lib/ld-linux.so.2 &&

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
