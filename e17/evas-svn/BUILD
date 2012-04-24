(

  export PATH="$MODULE_PREFIX/bin:$PATH"
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"

  OPTS+="  --enable-image-loader-eet        \
               --with-x                         \
               --enable-software-x11            \
               --enable-xrender-x11             \
               --enable-gl-x11                  \
               --enable-fb                      \
               --enable-buffer                  \
               --enable-font-loader-eet         \
               --enable-cpu-c                   \
               --enable-scale-sample            \
               --enable-scale-smooth            \
               --enable-convert-yuv             \
               --enable-small-dither-mask       \
               --enable-convert-8-rgb-332       \
               --enable-convert-8-rgb-666       \
               --enable-convert-8-rgb-232       \
               --enable-convert-8-rgb-222       \
               --enable-convert-8-rgb-221       \
               --enable-convert-8-rgb-121       \
               --enable-convert-8-rgb-111       \
               --enable-convert-16-rgb-565      \
               --enable-convert-16-rgb-555      \
               --enable-convert-16-rgb-444      \
               --enable-convert-16-rgb-ipq      \
               --enable-convert-16-rgb-rot-0    \
               --enable-convert-16-rgb-rot-270  \
               --enable-convert-16-rgb-rot-90   \
               --enable-convert-24-rgb-888      \
               --enable-convert-24-bgr-888      \
               --enable-convert-32-rgb-8888     \
               --enable-convert-32-rgbx-8888    \
               --enable-convert-32-bgr-8888     \
               --enable-convert-32-bgrx-8888    \
               --enable-convert-32-rgb-rot-0    \
               --enable-convert-32-rgb-rot-270  \
               --enable-convert-32-rgb-rot-90   \
               --enable-pthreads"

   default_cvs_build

) > $C_FIFO 2>&1
