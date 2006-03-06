(

  sedit "s/usr\/X11R6/usr\//" src/glw/Makefile &&

  DRM_SOURCE_PATH="/usr/include/drm" make linux-dri-x86 OPT_FLAGS="$CFLAGS \
  -DDEFAULT_DRIVER_DIR=\\\"/usr/lib/xorg/modules/dri\\\" -DSHM" \
  MKDEP="gcc -M" MKDEP_OPTIONS="-MF depend" \
  X11_INCLUDES="-I/usr/include" DRI_DIRS="r200" \
  ASM_FLAGS="-DUSE_X86_ASM -DUSE_MMX_ASM -DUSE_SSE_ASM" &&

  prepare_install &&
  
  mkdir -p /usr/lib/xorg/modules/dri &&
  cp lib/*_dri.so /usr/lib/xorg/modules/dri/ &&
  DESTDIR=/usr make install

) > $C_FIFO 2>&1
