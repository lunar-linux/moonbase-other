(

  export  YACC=byacc
  export  QTDIR=$SOURCE_DIRECTORY
  export  PATH=$QTDIR/bin:$PATH

  make -f Makefile.cvs    &&

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
                               -prefix /opt/lunar/qt/3        \
                               -xft                           \
                               $OPTS                         &&

  sedit 's:strip "$(INSTALL_ROOT)/opt/lunar/qt/3/doc/html/"::'  src/Makefile &&

  case  $SAMPCOMP  in
    y|Y|j|J) 
      make                 
      ;;
    *)
      make  symlinks sub-src sub-tools       
      ;;
  esac

  prepare_install          &&
  make  install            &&

  case  $SAMPIN  in
    y|Y|j|J)
      mv examples  /opt/lunar/qt/3  &&
      mv tutorial  /opt/lunar/qt/3  
      ;;
  esac

  if ! grep -q "/opt/lunar/qt/3/lib" /etc/ld.so.conf; then
    echo "/opt/lunar/qt/3/lib" >> /etc/ld.so.conf  
  fi

  if ! grep -q "QTDIR=/opt/lunar/qt/3" /etc/profile; then
    echo "export  QTDIR=/opt/lunar/qt/3" >> /etc/profile
  fi


) > $C_FIFO 2>&1
