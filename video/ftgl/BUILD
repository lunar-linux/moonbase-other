(

  sedit "s|FTTextureGlyph::||" include/FTTextureGlyph.h

  cd unix/       &&

  if module_installed NVIDIA-beta || module_installed NVIDIA; then
    OPTS="$OPTS --with-gl-lib=/usr/lib/opengl/nvidia/"
  fi &&

  OPTS="$OPTS --enable-shared --enable-threaded"

  default_build

) > $C_FIFO 2>&1
