(

  sedit "s/usr\/X11R6/usr\/X11R7/" src/glw/Makefile &&

  DRM_SOURCE_PATH="/usr/include/drm" make linux-dri-x86 OPT_FLAGS="$CFLAGS \
  -DDEFAULT_DRIVER_DIR=\\\"/usr/X11R7/lib/xorg/modules/dri\\\"" \
  MKDEP="gcc -M" MKDEP_OPTIONS="-MF depend" \
  X11_INCLUDES="-I/usr/X11R7/include" DRI_DIRS="r200" \
  ASM_FLAGS="-DUSE_X86_ASM -DUSE_MMX_ASM -DUSE_SSE_ASM" \
  EXTRA_LIB_PATH="-L/usr/X11R7/lib" &&

  prepare_install &&
  
  mkdir -p /usr/X11R7/lib/xorg/modules/dri &&
  cp lib/*_dri.so /usr/X11R7/lib/xorg/modules/dri/ &&
  cp -P lib/lib* /usr/lib/ &&
  for header in glext.h gl.h gl_mangle.h glu.h glu_mangle.h glxext.h glx.h \
  glx_mangle.h ; do
    install -m644 include/GL/${header} /usr/X11R7/include/GL/
  done

) > $C_FIFO 2>&1
