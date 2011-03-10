(

# Has trouble finding gfortran.
  sedit "s:g77 f77:g77 f77 gfortran:g" configure &&

# Like the fftw3 module, to get float and non-float precision this
# needs to be ran twice.

  case `arch` in
    i386|i486|i586|i686|athlon)
      OPTS+=" --enable-i386-hacks"
      ;;
    *)
  esac

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-type-prefix      \
               --enable-shared           \
               --enable-threads          \
               --enable-float            \
               $OPTS                    &&

  default_make    &&
  make distclean  &&

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-type-prefix      \
               --enable-shared           \
               --enable-threads          \
               $OPTS                    &&

  default_make

) > $C_FIFO 2>&1
