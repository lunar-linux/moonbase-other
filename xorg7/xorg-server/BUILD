(

  . /etc/profile.d/x11r7.rc &&

  patch_it $SOURCE3 0 &&
  patch_it $SOURCE4 1 &&

  if [[ "$USE_NVIDIA" = "y" ]]; then
    OPTS="$OPTS --disable-glx --disable-glx-tlx";
  fi &&

  OPTS+="--enable-composite --enable-aiglx \
         --with-mesa-source=${SOURCE_DIRECTORY}/Mesa-${MESA_VERSION}" &&

  default_build

) > $C_FIFO 2>&1
