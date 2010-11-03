(

  # Compile with gcc 4.5.1
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  # Sensible browser default, based on http://koji.fedoraproject.org/koji/packageinfo?packageID=5070
  sedit "s:mozilla:firefox:" fbreader/data/default/external.desktop.xml  &&

  # From http://repos.archlinux.org/wsvn/community/fbreader/trunk/PKGBUILD
  export TARGET_ARCH=desktop  &&
  export UI_TYPE=gtk  &&
  export TARGET_STATUS=release  &&

  default_build  &&

  ln -sfn /usr/bin/FBReader /usr/bin/fbreader

) > $C_FIFO 2>&1
