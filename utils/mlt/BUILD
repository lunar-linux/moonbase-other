(

  . /etc/profile.d/qt4.rc  &&
  . /etc/profile.d/kde4.rc &&

  OPTS+=" --arch='$CPU' --kde-libdir=/usr/lib --kde-includedir=/usr/include \
          --qimage-includedir=/usr/include/qt4 --qimage-libdir=/usr/lib/qt4" &&

  default_build &&

# The bindings install process is a little incomplete.
  if in_depends $MODULE sun-jdk; then
    export JAVA_INCLUDE="-I/usr/java/latest/include -I/usr/java/latest/include/linux"
   else
    export JAVA_INCLUDE="-I/usr/java/latest/include -I/usr/java/latest/include/linux"
  fi &&

  if in_depends $MODULE pyxdg; then
    ./configure --prefix=/usr --swig-languages="python" &&
    make &&
    prepare_install &&
    PYTHON_VER=`lvu installed Python | cut -c 1-3` &&
     install -m755 src/swig/python/mlt.py /usr/lib/python${PYTHON_VER}/site-packages/     &&
     install -m755 src/swig/python/_mlt.so /usr/lib/python${PYTHON_VER}/site-packages/    &&
     install -m755 src/swig/python/mlt_wrap.o /usr/lib/python${PYTHON_VER}/site-packages/
  fi &&

  if in_depends $MODULE ruby; then
    sedit '8i system( "ln -sf ../../framework/libmlt.so" )' src/swig/ruby/build &&
    sedit '9i system( "ln -sf ../../mlt++/libmlt++.so" )' src/swig/ruby/build &&
    sedit "12d" src/swig/ruby/build &&
    sedit '12i $LIBS += " -lmlt++ -lmlt -lstdc++"' src/swig/ruby/build &&
    sedit "s:I../.. mlt.i:I../..mlt.i:" src/swig/ruby/build &&

    ./configure --prefix=/usr --swig-languages="ruby" &&
    default_make
  fi

) > $C_FIFO 2>&1
