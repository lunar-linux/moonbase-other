(

  cd sources  &&
  unzip enginesource????????.zip  &&
  cd darkplaces  &&
  sedit "s:^OPTIM_RELEASE=.*$:OPTIM_RELEASE=$CFLAGS:" makefile.inc  &&

  # Use system jpeg, to work with jpeg 7 as well as jpeg 6b
  patch_it $SOURCE2 1  &&
  sedit "1i DP_LINK_TO_LIBJPEG=1" makefile  &&
  sedit "1i DP_PRELOAD_DEPENDENCIES=1" makefile  &&

  # Look in shared directory automatically
  # From http://sources.gentoo.org/viewcvs.py/gentoo-x86/games-fps/nexuiz/
  sedit "s:ifdef DP_.*:DP_FS_BASEDIR=/usr/share/games/$MODULE\n&:" makefile  &&

  make -f makefile cl-release sv-release  &&
  prepare_install  &&
  mkdir -p /usr/games /usr/share/games/$MODULE  &&
  install -m755 darkplaces-glx /usr/games/nexuiz-glx  &&
  install -m755 darkplaces-dedicated /usr/games/nexuiz-dedicated  &&
  cp -a $SOURCE_DIRECTORY/{data,havoc} /usr/share/games/$MODULE/

) > $C_FIFO 2>&1
