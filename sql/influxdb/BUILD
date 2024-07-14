export GOPATH=$SOURCE_DIRECTORY
export GOPROXY=https://proxy.golang.org
export GOSUMDB=off
export GO111MODULE="on" 
export GOFLAGS="-trimpath -mod=readonly -modcacherw"
export LDFLAGS=""
export RUSTFLAGS='-A hidden_glob_reexports'

add_priv_user influxdb:influxdb -d /var/lib/influxdb &&

PATH="$(go env GOPATH)/bin:$PATH" make -j1 VERSION=$pkgver COMMIT=$COMMIT INFLUXDB_SHA=$COMMIT &&


#cd $GOPATH/src/github.com/influxdb/influxdb &&
#go get ./... &&
#go build ./... &&
#go install -a -ldflags="-X main.version $VERSION -X main.commit $COMMIT" ./...
prepare_install &&
#install -Dm644 ../influxdb.service -t /usr/lib/systemd/system
install -Dm755 bin/linux/influxd -t /usr/bin &&
install -dm750 -o influxdb -g influxdb /var/lib/influxdb/{data,meta,hh}
