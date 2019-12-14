export GOPATH="$SOURCE_DIRECTORY"
export BUILDTAGS='seccomp ostree varlink containers_image_ostree_stub systemd'
export CGO_LDFLAGS=$LDFLAGS
export GOFLAGS="-trimpath"

#export PATH="$SOURCE_DIRECTORY/bin:$PATH"
#export LDFLAGS="-s"
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"

default_make
