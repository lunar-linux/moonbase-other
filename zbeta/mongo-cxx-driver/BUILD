OPTS+=" --release --use-system-boost --use-system-pcre --sharedclient --full --disable-warnings-as-errors" &&

scons -j${MAKES:=1} $OPTS mongoclient &&
prepare_install &&
scons -j${MAKES:=1} $OPTS install-mongoclient --prefix=/usr &&

rm -f /usr/lib/libmongoclient.a
