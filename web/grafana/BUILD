export GOPATH=$SOURCE_DIRECTORY

add_priv_user grafana:grafana -d /var/lib/grafana &&

go run build.go setup &&
mkdir -p $GOPATH/src/github.com/grafana/grafana &&
ln -s $GOPATH/pkg $GOPATH/src/github.com/grafana/grafana/ &&
devoke_installwatch &&
npm install &&
node_modules/.bin/grunt &&
go run build.go build &&

prepare_install &&

install -Dm755 bin/grafana-server /usr/sbin/grafana-server &&
install -dm750 -o grafana -g grafana /var/lib/grafana &&
install -Dm640 -o root -g grafana conf/defaults.ini /var/lib/grafana/conf/defaults.ini &&
install -dm755  /usr/share/grafana &&
install -dm755 -o grafana -g grafana /var/log/grafana &&
cp -r public vendor /usr/share/grafana/ &&

if [ ! -f /etc/grafana/grafana.ini ]; then
  install -Dm640 -o root -g grafana $SCRIPT_DIRECTORY/grafana.ini /etc/grafana/grafana.ini
fi
