(

  rm -rf old.libraries &&
  prepare_install &&
  mkdir -p /usr/include/{CL,cuda} &&
  cp -f $SOURCE_CACHE/{opencl.h,cl_platform.h,cl.h,cl_ext.h,cl_gl.h,cl_gl_ext.h,cl.hpp} /usr/include/CL &&
  install -m644 * /usr/include/cuda

) > $C_FIFO 2>&1
