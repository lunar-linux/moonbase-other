OPTS+=" --disable-static"

if module_installed vcdimager; then
  OPTS+=" --enable-vcd-info"
else
  OPTS+=" --disable-vcd-info"
fi &&

default_build
