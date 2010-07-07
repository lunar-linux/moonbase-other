(

  sedit "s:/usr/share/fonts/truetype/ttf-dejavu/:/usr/share/fonts/dejavu-ttf/:" src/gpsdrive_config.c &&

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&                                                                                                                                     
                                                                                                                                                                                        
  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           -DWITH_SPEECH=OFF                       \
                           $OPTS                                  &&

  default_make &&

#This copies a minimal set of icons needed by gpsdrive
  unpack $SOURCE2  &&
  cp -r usr/ / 

) > $C_FIFO 2>&1
