(

  # Patches from http://koji.fedoraproject.org/koji/packageinfo?packageID=4841
  patch_it $SCRIPT_DIRECTORY/wildmidi-0.2.2-opt.patch 1 &&
  patch_it $SCRIPT_DIRECTORY/wildmidi-0.2.2-cfg-abs-path.patch 1 &&
  patch_it $SCRIPT_DIRECTORY/wildmidi-0.2.2-pulseaudio.patch 1 &&
  patch_it $SCRIPT_DIRECTORY/wildmidi-0.2.2-bigendian.patch 1 &&

  autoreconf -fi &&
  OPTS+=" --disable-static --disable-werror --without-arch" &&
  default_build

) > $C_FIFO 2>&1
