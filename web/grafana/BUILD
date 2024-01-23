
go mod init &&
export GO111MODULE=on
export GOPROXY=https://proxy.golang.org
export GOSUMDB=sum.golang.org 
export CGO_LDFLAGS="${LDFLAGS}"
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -modcacherw"

sed -ri 's,^(\s*data\s*=).*,\1 /var/lib/grafana,' conf/defaults.ini &&
sed -ri 's,^(\s*plugins\s*=).*,\1 /var/lib/grafana/plugins,' conf/defaults.ini &&
sed -ri 's,^(\s*provisioning\s*=).*,\1 /var/lib/grafana/conf/provisioning,' conf/defaults.ini &&
sed -ri 's,^(\s*logs\s*=).*,\1 /var/log/grafana,' conf/defaults.ini &&

make gen-go &&

go run build.go setup &&
go run build.go build &&

#Using this causes the build to fail on many yarn related files erroring out
#with; ERR_IMPORT_ASSERTION_TYPE_MISSING
#export NPM_CONFIG_PREFIX=npm
#export PATH+=":$NPM_CONFIG_PREFIX/bin"
#export NODE_OPTIONS="--max-old-space-size=16000"
#yarn install || cat /tmp/*/build.log &&
#NODE_ENV=production yarn run build &&

prepare_install &&

add_priv_user grafana:grafana -d /var/lib/grafana &&

install -Dm755 bin/linux-amd64/grafana-server /usr/sbin/grafana-server &&
install -dm750 -o grafana -g grafana /var/lib/grafana &&
install -Dm640 -o root -g grafana conf/defaults.ini /var/lib/grafana/conf/defaults.ini &&
install -dm755  /usr/share/grafana &&
install -dm755 -o grafana -g grafana /var/log/grafana &&
cp -r public tools /usr/share/grafana/ &&

if [ ! -f /etc/grafana/grafana.ini ]; then
  install -Dm640 -o root -g grafana $SCRIPT_DIRECTORY/grafana.ini /etc/grafana/grafana.ini
fi
