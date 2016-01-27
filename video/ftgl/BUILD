(

  if module_installed NVIDIA; then
    OPTS+=" --with-gl-lib=/usr/lib/opengl/nvidia/"
  fi &&

  LDFLAGS+=" -lGL -lGLU -lglut -lm" &&

  default_build &&

  install `find src -name "*.h" -print` /usr/include/FTGL

) > $C_FIFO 2>&1
