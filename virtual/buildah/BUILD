export CGO_LDFLAGS=$LDFLAGS
export GOFLAGS="-trimpath"

export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"

make PREFIX=/usr BUILDTAGS="containers_image_ostree_stub seccomp" &&

prepare_install &&

make PREFIX=usr install &&

if module_installed bash-completion ; then
    make PREFIX=usr install install.completions
fi
