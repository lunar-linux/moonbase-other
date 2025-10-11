export GOPATH="$SOURCE_DIRECTORY/gopath"
echo "$LDFLAGS"

go build \
   -trimpath \
   -modcacherw \
   -ldflags "-extldflags ${LDFLAGS}" \
   . &&
prepare_install &&
install -Dm0755 powerline-go /usr/bin/powerline-go
