(

  export OPTS+=" --enable-plugin-gestures"
  # gcc-3.3.x fix
  sedit "s/##i##/i/g" libburgnerisofs/burgner-isofs-tree-volume-descriptor.c &&
  sedit "s/##i/i/g" libburgnerisofs/burgner-isofs-tree-volume-descriptor.c &&
  default_build

) > $C_FIFO 2>&1
