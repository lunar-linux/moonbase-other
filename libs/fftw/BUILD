(

  case `arch` in
    i386|i486|i586|i686|athlon)
      OPTS="$OPTS --enable-i386-hacks"
      ;;
    *)
  esac

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-shared           \
               --enable-threads          \
               $OPTS                    &&

  default_make

) > $C_FIFO 2>&1
