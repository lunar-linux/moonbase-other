(

  INST_DIR="/usr/lib/live" &&

  if [ -d $INST_DIR ] ; then
    mkdir -p $INST_DIR
  fi &&

  if [ `arch` == "x86_64" ] ; then
   ./genMakefiles linux-64bit
   else
   ./genMakefiles linux
  fi &&

  make &&
  prepare_install &&
  cp -rf . $INST_DIR

)
