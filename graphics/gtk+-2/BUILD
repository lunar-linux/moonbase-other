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

# remove the existing NVIDIA or NVIDIA-beta module to prevent the installation failing
  WITH_NV=""
  if module_installed NVIDIA; then
      WITH_NV=NVIDIA
      lrm NVIDIA
  elif module_installed NVIDIA-beta; then
      WITH_NV=NVIDIA-beta
      lrm NVIDIA-beta
  fi  &&
  echo $WITH_NV >/tmp/WITH_NV &&

  default_build

) > $C_FIFO 2>&1
