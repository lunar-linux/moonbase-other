(

  patch_it $SOURCE2 1 &&

  . /etc/profile.d/x11r7.rc &&

  if [ -h /usr/share/X11/xkb/compiled ]; then
    rm -f /usr/share/X11/xkb/compiled
  fi &&

  if [[ "$USE_NVIDIA" = "y" ]]; then
    OPTS="$OPTS --disable-glx --disable-glx-tlx"
  fi &&

  OPTS+=" --enable-composite --enable-aiglx --enable-xorgcfg \
         --with-dri-driver-path=${MODULE_PREFIX}/lib/dri" &&

  default_build

  # This should not be needed, check in next release if still needed.
  #  rm -fr /usr/share/X11/xkb/compiled &&
  #  mkdir -p /var/lib/xkb &&
  #  ln -sf /var/lib/xkb /usr/share/X11/xkb/compiled


) > $C_FIFO 2>&1
