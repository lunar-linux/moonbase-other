export GOPATH="$SOURCE_DIRECTORY/gopath"
unset LDFLAGS
#bad_flags "-Wl,-z,relro" "-Wl,-z,now" &&
export LDFLAGS="-Wl,-z,relro,-z,now $LDFLAGS" &&

go build \
   -trimpath \
   -modcacherw \
   -ldflags "-extldflags ${LDFLAGS}" \
   . &&
prepare_install &&
install -Dm0755 powerline-go /usr/bin/powerline-go
