(

  # DO NOT REMOVE THESE PATCHES, consult Ratler for info
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  ./configure -d -confdir /etc -compatibility_mode_for_colored_groff  &&
  default_make

) > $C_FIFO 2>&1
