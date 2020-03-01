#export GOPATH="$SOURCE_DIRECTORY"
export BUILDTAGS='seccomp varlink systemd'
export CGO_LDFLAGS=$LDFLAGS
export GOFLAGS="-trimpath"

export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"

default_make
