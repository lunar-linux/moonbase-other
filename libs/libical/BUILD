(

# This seems to only be needed on x86_64
  if [ `arch` == "x86_64" ] ; then
  cd ../ &&
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  cd $SOURCE_DIRECTORY
  fi &&

  ./bootstrap &&

  ./autogen.sh $OPTS &&

  default_build

) > $C_FIFO 2>&1
