(
  cd $SOURCE_DIRECTORY/nvnet                   &&
  make &&
  cd $SOURCE_DIRECTORY/nvsound/main &&
  make &&
  prepare_install                              &&
  cd $SOURCE_DIRECTORY/nvnet                   &&
  make install &&
  cd $SOURCE_DIRECTORY/nvsound/main &&
  make install &&
  chmod 444 $SOURCE_DIRECTORY/nvsound/ReleaseNotes.html &&
 mkdir -p /usr/share/doc/nforce/ &&
 cp -f $SOURCE_DIRECTORY/nvsound/ReleaseNotes.html /usr/share/doc/nforce/ &&
 chmod 755 $SOURCE_DIRECTORY/nvsound/nvmixer &&
 cp -f $SOURCE_DIRECTORY/nvsound/nvmixer /usr/bin/ &&
 chmod 755 $SOURCE_DIRECTORY/nvsound/nvmix-reg &&
 cp -f $SOURCE_DIRECTORY/nvsound/nvmix-reg /usr/bin/ &&
 chmod 755 $SOURCE_DIRECTORY/nforce-installer &&
 cp -f $SOURCE_DIRECTORY/nforce-installer /usr/bin/ &&
 chmod 755 $SOURCE_DIRECTORY/nforce-bug-report.sh &&
 cp -f $SOURCE_DIRECTORY/nforce-bug-report.sh /usr/bin/ &&
 chmod 775 $SOURCE_DIRECTORY/nvsound/lib/libnvopenal.a &&
 cp -f $SOURCE_DIRECTORY/nvsound/lib/libnvopenal.a /usr/lib/ &&
 chmod 775 $SOURCE_DIRECTORY/nvsound/lib/libnvalut.a &&
 cp -f $SOURCE_DIRECTORY/nvsound/lib/libnvalut.a /usr/lib/ &&
 ldconfig &&
  cd $BUILD_DIRECTORY                          &&
 rm -fR $SOURCE_DIRECTORY
) > $C_FIFO 2>&1
