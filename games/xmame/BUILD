case  $CUSTOM in
  y|Y)  ${EDITOR:-nano}  makefile.unix  ;;
esac

rm  -f  $MODULE_CONFIG

(

  make  PREFIX=/usr           \
        BINDIR=/usr/games     \
        -f  makefile.unix    &&
  prepare_install            &&
  make  PREFIX=/usr           \
        BINDIR=/usr/games     \
        -f  makefile.unix     \
        install              &&
  mkdir -p $DOCUMENT_DIRECTORY/xmame              &&
  cp -a src/unix/doc/* $DOCUMENT_DIRECTORY/xmame  &&
  cp -p README todo $DOCUMENT_DIRECTORY/xmame     &&
  chown root:root $DOCUMENT_DIRECTORY/xmame/*     &&
  ln -sf /usr/games/xmame.x11 /usr/games/xmame

) > $C_FIFO 2>&1
