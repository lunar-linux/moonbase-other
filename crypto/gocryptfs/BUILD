export CGO_LDFLAGS="$LDFLAGS"
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly"

#Calling this directly avoids installing pandoc and its host of
#dependencies
./build.bash &&

prepare_install
make install
