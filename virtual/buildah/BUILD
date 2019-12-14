export CGO_LDFLAGS=$LDFLAGS
export GOFLAGS="-trimpath"

export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"

make PREFIX=/usr BUILDTAGS="containers_image_ostree_stub ostree seccomp" &&

prepare_install &&

make PREFIX=usr install
