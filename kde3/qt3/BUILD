(
  export  YACC=byacc
  export  QTDIR=$SOURCE_DIRECTORY
  export  PATH=$QTDIR/bin:$PATH
  export  LD_LIBRARY_PATH=$QTDIR/lib

  sedit  "s/-O2/$CXXFLAGS/" mkspecs/linux-g++/qmake.conf

  echo  "yes"  |  ./configure  -release                       \
                               -shared                        \
                               -thread                        \
                               -qt-gif                        \
                               -plugin-imgfmt-mng             \
                               -system-libpng                 \
                               -system-libjpeg                \
                               -system-zlib                   \
                               -no-g++-exceptions             \
                               -thread                        \
                               -no-stl                        \
                               -prefix ${QT_PREFIX:-$QTDIR}   \
                               -xft                           \
                               $OPTS                         &&

#  sedit 's:strip "$(INSTALL_ROOT)${QT_PREFIX:-$QTDIR}/doc/html/"::'  src/Makefile &&

  case  $SAMPCOMP  in
    y|Y|j|J)
      make
      ;;
    *)
      make  symlinks sub-src sub-tools
      ;;
  esac              &&

  prepare_install   &&
  make  install     &&

  case  $SAMPIN  in
    y|Y|j|J)
      mv examples  ${QT_PREFIX:-$QTDIR}  &&
      mv tutorial  ${QT_PREFIX:-$QTDIR}
      ;;
  esac  &&

  if ! grep -q "${QT_PREFIX:-$QTDIR}/lib" /etc/ld.so.conf; then
    echo "${QT_PREFIX:-$QTDIR}/lib" >> /etc/ld.so.conf
  fi

) > $C_FIFO 2>&1
