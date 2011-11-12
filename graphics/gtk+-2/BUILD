(

  bad_flags -mssse3       &&
  bad_flags -mfpmath=sse  &&

  # Fixes mysterious drag and drop crash in gtk+-2
  # gtk+-2 when compiled with -O2 or -O3 will compile well
  # but crash on drag and drop of bitmaps.
  # Surprisingly -Os works well and does not need the fix below.
  # The scary thing is -O2, -O3 and -Os all enable -fcaller-saves
  # but only -Os does it in a way gtk+-2 does not crash on DnD.
  case "$CFLAGS" in
    *-O[23]*)
      CFLAGS+=' -fno-caller-saves'
      ;;
  esac  &&

  patch_it $SOURCE2 1  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/docs m4macros build/m4macros build/g" Makefile.in
  fi  &&

  OPTS+=" --with-gdktarget=x11"

# remove the existing NVIDIA or NVIDIA-beta module to prevent the compiling failing
  WITH_NV=0  &&
  if module_installed NVIDIA; then
      WITH_NV=1  &&
      lrm NVIDIA
    elsif module_installed NVIDIA-beta; then
      WITH_NV=2  &&
      lrm NVIDIA-beta
  fi  &&

  default_build  &&

# restore the NVIDIA or NVIDIA-beta module, if it was previously installed
  if [ $WITH_NV = 1 ]; then
      lin NVIDIA
    elsif [ $WITH_NV = 2 ]; then
      lin NVIDIA-beta
  fi

) > $C_FIFO 2>&1
