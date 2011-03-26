(


  OPTS+=" --disable-debug" &&

  if in_depends $MODULE sun-jdk; then
    export JAVA_INCLUDE="-I/usr/java/latest/include -I/usr/java/latest/include/linux" 
   else
    export JAVA_INCLUDE="-I/usr/java/latest/include -I/usr/java/latest/include/linux" 
  fi &&

  default_config &&
  sedit "s:,: :g" src/swig/config.mak &&

  default_make &&

# The bindings install process is a little incomplete.
  if in_depends $MODULE pyxdg; then
    PYTHON_VER=`lvu installed Python | cut -c 1-3` &&
     install -m755 src/swig/python/mlt.py /usr/lib/python${PYTHON_VER}/site-packages/     &&
     install -m755 src/swig/python/_mlt.so /usr/lib/python${PYTHON_VER}/site-packages/    &&
     install -m755 src/swig/python/mlt_wrap.o /usr/lib/python${PYTHON_VER}/site-packages/
  fi

) > $C_FIFO 2>&1
