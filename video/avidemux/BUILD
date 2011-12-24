(

  sedit "s:Icon=:Icon=/usr/share/pixmaps/:" avidemux2-gtk.desktop avidemux2.desktop  &&

# Reference; https://bugs.gentoo.org/show_bug.cgi?id=365153
  sedit "s:i_open_gop:b_open_gop:g" plugins/ADM_videoEncoder/ADM_vidEnc_x264/encoder.cpp plugins/ADM_videoEncoder/ADM_vidEnc_x264/x264Options.cpp &&

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

# Make some plugin dirs for future use.
  if [ ! -d /usr/lib/ADM_plugins ] ; then
   mkdir -p /usr/lib/ADM_plugins/{audioDecoder,videoFilter,audioDevices,audioEncoders}
  fi  &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make  &&

  install -D -m644 ../${MODULE}2-gtk.desktop /usr/share/applications/${MODULE}2-gtk.desktop  &&
  install -D -m644 ../avidemux_icon.png /usr/share/pixmaps/avidemux.png  &&

  # handle plugins...
  P_DIR="$SOURCE_DIRECTORY/plugins/plugins-build"  &&
  mkdir $P_DIR  &&
  cd $P_DIR     &&
  cmake .. -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX       \
           -DCMAKE_BUILD_TYPE=RELEASE                  \
           -DAVIDEMUX_SOURCE_DIR=$SOURCE_DIRECTORY     \
           -DAVIDEMUX_INSTALL_PREFIX=$MODULE_PREFIX    \
           -DAVIDEMUX_CORECONFIG_DIR=$OOTB_DIR/config  \
           $OPTS                                      &&
  default_make

) > $C_FIFO 2>&1
