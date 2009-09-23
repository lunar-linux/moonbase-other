(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  # this will make it use its own headers
  # not the last linned kernel headers
  sedit "s?/usr/src/linux/include?/usr/include?g" DEFAULTS/Defaults.linux  &&
    
  if module_installed smake ; then
    THISMAKE=smake
  else
    THISMAKE=./Gmake.linux
  fi                                                 &&
  $THISMAKE INS_BASE=/usr DEFINSUSR=root              \
            DEFINSGRP=root                           &&
  prepare_install                                    &&
  $THISMAKE INS_BASE=/usr DEFINSUSR=root              \
            DEFINSGRP=root MANDIR=share/man install

) > $C_FIFO 2>&1
