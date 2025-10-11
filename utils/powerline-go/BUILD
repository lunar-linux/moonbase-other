export GOPATH="$SOURCE_DIRECTORY/gopath"
bad_flags "-s "

go build \
   -trimpath \
   -modcacherw \
   -ldflags "-s -extldflags ${LDFLAGS}" \
   . &&
prepare_install &&
install -Dm0755 powerline-go /usr/bin/powerline-go
