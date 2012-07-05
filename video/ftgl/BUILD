(

ndrivers="NVIDIA NVIDIA-old NVIDIA-legacy NVIDIA-beta NVIDIA-fx"
for driver in $ndrivers
do
  if module_installed $driver; then
    OPTS+=" --with-gl-lib=/usr/lib/opengl/nvidia/"
    break
  fi
done &&

  LDFLAGS+=" -lm" &&

  default_build &&

  install `find src -name "*.h" -print` /usr/include/FTGL

) > $C_FIFO 2>&1
