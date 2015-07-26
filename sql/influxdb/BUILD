export GOPATH=$SOURCE_DIRECTORY

add_priv_user influxdb:influxdb -d /var/lib/influxdb &&

cd $GOPATH/src/github.com/influxdb/influxdb &&
go get ./... &&
go build ./... &&
go install -a -ldflags="-X main.version $VERSION -X main.commit $COMMIT" ./...
prepare_install &&
install -Dm755 $GOPATH/bin/influxd /usr/sbin/influxd &&
install -Dm755 $GOPATH/bin/influx /usr/bin/influx &&
install -dm750 -o influxdb -g influxdb /var/lib/influxdb/{data,meta,hh} &&

if [ ! -f /etc/influxdb.conf ]; then
  install -Dm644 $GOPATH/src/github.com/influxdb/influxdb/etc/config.sample.toml /etc/influxdb.conf
fi
