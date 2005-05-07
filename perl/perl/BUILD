#bzcat $SCRIPT_DIRECTORY/perl-gcc3.patch.bz2 | patch -p 0

case $SUIDPERL in
  y|Y) USE_SUIDPERL="-Dd_dosuid" ;;
    *) USE_SUIDPERL="" ;;
esac

case  $CUSTOM  in
  y|Y|j|J)  sound  REPORT
            ./Configure  -Dprefix=/usr   \
                         $USE_SUIDPERL      \
                         -Dman1dir=/usr/share/man/man1 \
                         -Dman3dir=/usr/share/man/man3 -d -e  
                         ;;
        *)  true  ;;
esac

(

  case  $CUSTOM  in
    y|Y|j|J)  true  ;;
          *)  ./Configure  -Dprefix=/usr   \
                           $USE_SUIDPERL      \
                           -Dman1dir=/usr/share/man/man1 \
                           -Dman3dir=/usr/share/man/man3 -d -e  \
                           -Dusethreads         ;;
  esac             &&
  make             &&
  prepare_install  &&
  make    install
  strip --strip-unneeded `which perl`
  case $SUIDPERL in
    y|Y) strip --strip-unneeded `which suidperl` ;;
  esac

) > $C_FIFO 2>&1
