OPTS+=" --prefix=/usr --release --sharedclient --disable-warnings-as-errors" &&

scons -j${MAKES:=1} $OPTS driver &&
prepare_install &&
scons -j${MAKES:=1} $OPTS install &&

rm -f /usr/lib/libmongoclient.a
