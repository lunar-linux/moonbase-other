(

  . /etc/profile.d/x11r7.rc &&

  patch_it $SOURCE3 1 &&


#if [ -h /usr/share/X11/xkb/compiled ]; then
#  rm -f /usr/share/X11/xkb/compiled
#fi &&

  if [[ "$USE_NVIDIA" = "y" ]]; then
    OPTS="$OPTS --disable-glx --disable-glx-tlx"
  fi &&

  OPTS+=" --enable-composite --enable-aiglx --enable-glx-tls \
         --with-mesa-source=${SOURCE_DIRECTORY}/Mesa-${MESA_VERSION} \
	 --with-dri-driver-path=${MODULE_PREFIX}/lib/dri" &&

  default_build

) > $C_FIFO 2>&1
