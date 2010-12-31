(

  bad_flags -mssse3 &&
  bad_flags -mfpmath=sse &&

  # Fixes drag and drop crash
  bad_flags -O3 &&
  bad_flags -O2 &&
  CFLAGS=" -O1 $CFLAGS" &&
  CXXFLAGS=$CFLAGS &&

  patch_it $SOURCE2 1 &&
  if [ "$USE_XINPUT" == "y" ]; then
    # XInput support is needed for Wacom tablets to work in GIMP
    OPTS+=" --with-xinput=yes"
  fi  &&

  default_build

) > $C_FIFO 2>&1
