(

  . /etc/profile.d/x11r7.rc &&

  if [ -h /usr/share/X11/xkb/compiled ]; then
    rm -f /usr/share/X11/xkb/compiled
  fi &&

  if [[ "$USE_NVIDIA" = "y" ]]; then
    OPTS="$OPTS --disable-glx --disable-glx-tlx"
  fi &&

  OPTS+=" --enable-composite --enable-aiglx \
         --with-mesa-source=${SOURCE_DIRECTORY}/Mesa-${MESA_VERSION} \
	 --with-dri-driver-path=${MODULE_PREFIX}/lib/X11/modules/dri" &&

  default_build

) > $C_FIFO 2>&1
