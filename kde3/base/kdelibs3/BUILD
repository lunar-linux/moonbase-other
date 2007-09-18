(

  patch_it $SOURCE2 0 &&

# These two patches need a revisit on the next kde version bump
# or the next cups > 1.3.1  bump.
  patch_it $SOURCE_CACHE/$SOURCE3 0 &&
  patch_it $SOURCE_CACHE/$SOURCE4 0 &&

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  default_config &&

  if [[ "$APIDOX" == "y" ]]; then
    make apidox
  fi &&

  default_make

) > $C_FIFO 2>&1
