(

  # Generate documentation of they user has doxygen installed
  if module_installed doxygen; then
    ./gendoc
  fi
 
  # Some extra flags based off of what is in OPTS
  local EXTRA_OPTS=""
  if [ `echo "$OPTS" | grep "sse"` ] ; then
    EXTRA_OPTS=" --enable-cpu-sse"
  fi
  if [ `echo "$OPTS" | grep "mmx"` ] ; then
    EXTRA_OPTS="$EXTRA_OPTS --enable-cpu-mmx"
  fi
 
  ./autogen.sh --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MOUDLE_PREFIX/share/man   \
               --enable-image-loader-eet           \
               --enable-image-loader-edb           \
               --enable-software-x11               \
               --enable-fb                         \
               --enable-font-loader-eet            \
               --enable-cpu-c                      \
               --enable-scale-sample               \
               --enable-scale-smooth               \
               --enable-convert-yuv                \
               --enable-small-dither-mask          \
               --enable-convert-8-rgb-332          \
               --enable-convert-8-rgb-666          \
               --enable-convert-8-rgb-232          \
               --enable-convert-8-rgb-222          \
               --enable-convert-8-rgb-221          \
               --enable-convert-8-rgb-121          \
               --enable-convert-8-rgb-111          \
               --enable-convert-16-rgb-565         \
               --enable-convert-16-rgb-555         \
               --enable-convert-16-rgb-444         \
               --enable-convert-16-rgb-ipq         \
               --enable-convert-16-rgb-rot-0       \
               --enable-convert-16-rgb-rot-270     \
               --enable-convert-16-rgb-rot-90      \
               --enable-convert-24-rgb-888         \
               --enable-convert-24-bgr-888         \
               --enable-convert-32-rgb-8888        \
               --enable-convert-32-rgbx-8888       \
               --enable-convert-32-bgr-8888        \
               --enable-convert-32-bgrx-8888       \
               --enable-convert-32-rgb-rot-0       \
               --enable-convert-32-rgb-rot-270     \
               --enable-convert-32-rgb-rot-90      \
               $EXTRA_OPTS                         \
               $OPTS                               &&

   default_build

) > $C_FIFO 2>&1
