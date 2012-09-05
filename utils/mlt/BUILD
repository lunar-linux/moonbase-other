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
  fi

  if in_depends $MODULE ruby; then
    RUBY_VER=`lvu installed ruby | cut -c 1-3` &&
    ./configure --prefix=/usr --swig-languages="ruby" &&
    make &&
    prepare_install &&
     install -m755 src/swig/ruby/mlt.so /usr/lib/ruby/site_ruby/$RUBY_VER/ &&
     install -m755 src/swig/ruby/mlt_wrap.o /usr/lib/ruby/site_ruby/$RUBY_VER/ &&
     install -m755 src/swig/ruby/*.rb /usr/lib/ruby/site_ruby/$RUBY_VER/
  fi


) > $C_FIFO 2>&1
