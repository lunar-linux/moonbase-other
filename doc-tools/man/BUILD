(

  # DO NOT REMOVE THESE PATCHES, consult Ratler for info
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  if [ "$UCODE" == "y" ] ; then
    # Example:  man top | grep -B1 "two help"
    # which should show an apostrophe, rather than "<B4>"
    sedit "s:nroff -Tlatin1:nroff:" configure
  fi &&

  ./configure -d -confdir /etc -compatibility_mode_for_colored_groff &&
  default_make

) > $C_FIFO 2>&1
