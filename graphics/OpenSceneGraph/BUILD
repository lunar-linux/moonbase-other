(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

# A q&d fix to get this to compile with ffmpeg-0.6. Revisit on the next OSG bump.
  CXXFLAGS="$CXXFLAGS -D__STDC_CONSTANT_MACROS" &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           $OPTS                                  &&

  default_make

) > $C_FIFO 2>&1
