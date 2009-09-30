(

  OOT_BUILD="$SOURCE_DIRECTORY/$MODULE-build" &&

  mkdir $OOT_BUILD  &&
  cd $OOT_BUILD     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE            &&

  default_build &&

  mkdir -p /etc/openal &&

  if [ ! -e /etc/openal/alsoft.conf ] ; then
    install -m 644 $SOURCE_DIRECTORY/alsoftrc.sample /etc/openal/alsoft.conf &&
    sedit "s:\#format = AL_FORMAT_STEREO16:format = AL_FORMAT_STEREO16:" /etc/openal/alsoft.conf
  fi

) > $C_FIFO 2>&1
