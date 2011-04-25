(

  # this will make it use its own headers
  # not the last linned kernel headers
  sedit "s?/usr/src/linux/include?/usr/include?g" DEFAULTS/Defaults.linux  &&

  if module_installed smake ; then
    THISMAKE=smake
  else
    THISMAKE=./Gmake.linux
  fi                                     &&
  $THISMAKE INS_BASE=/usr DEFINSUSR=root  \
            DEFINSGRP=root               &&
  prepare_install                        &&
  $THISMAKE INS_BASE=/usr DEFINSUSR=root  \
            DEFINSGRP=root MANDIR=man install  &&

  # cdrkit compatibility:
  install -m755 cdda2wav/{pitchplay,readmult} /usr/bin  &&
  ln -sf /usr/bin/mkisofs  /usr/bin/genisoimage  &&
  ln -sf /usr/bin/cdda2wav /usr/bin/icedax  &&
  ln -sf /usr/bin/readcd   /usr/bin/readom  &&
  ln -sf /usr/bin/cdrecord /usr/bin/wodim   &&
  ln -sf /usr/sbin/rscsi /usr/sbin/netscsid

) > $C_FIFO 2>&1
