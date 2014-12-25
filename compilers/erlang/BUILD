if [ `arch` == "x86_64" ] ; then
  OPTS="--enable-m64-build"
else
  OPTS="--enable-m32-build"
fi &&

# enable threads
OPTS+=" --enable-threads" &&

default_build  &&

mkdir -p /etc/config.d &&
install -Dm644 $SCRIPT_DIRECTORY/epmd.conf "/etc/config.d/epmd"
