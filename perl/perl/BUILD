#bzcat $SCRIPT_DIRECTORY/perl-gcc3.patch.bz2 | patch -p 0

cd $SOURCE_DIRECTORY/hints
sedit "s/-O3/$CFLAGS/" linux.sh
cd $SOURCE_DIRECTORY

case  $CUSTOM  in
  y|Y|j|J)  sound  REPORT
            ./Configure  -Dprefix=/usr   \
                         -Dd_dosuid      \
                         -Dman1dir=/usr/share/man/man1 \
                         -Dman3dir=/usr/share/man/man3 -d -e  
                         ;;
        *)  true  ;;
esac

(

  case  $CUSTOM  in
    y|Y|j|J)  true  ;;
          *)  ./Configure  -Dprefix=/usr   \
                           -Dd_dosuid      \
                           -Dman1dir=/usr/share/man/man1 \
                           -Dman3dir=/usr/share/man/man3 -d -e  \
                           -Dusethreads         ;;
  esac             &&
  make             &&
  prepare_install  &&
  make    install
  strip --strip-unneeded `which perl`
  strip --strip-unneeded `which suidperl`

) > $C_FIFO 2>&1
