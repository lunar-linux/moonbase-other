OPTS+=" --without-tcp-wrappers \
        --with-statedir=/var/lib/nfs \
        --with-start-statd=/usr/bin/start-statd \
        --enable-libmount-mount \
        --enable-mountconfig \
        --disable-static"

add_priv_user nfs:daemon &&

default_build &&

# Load nfs module
mkdir -p /usr/lib/modules-load.d
echo "nfs" > /usr/lib/modules-load.d/nfs-utils.conf &&

# Install systemd services
for service in systemd/{*.service,*.mount,*.target}; do
  install -D -m644 $service /usr/lib/systemd/system/${service##*/}
done &&
install -D -m755 $SCRIPT_DIRECTORY/nfs-utils_env.sh /usr/lib/systemd/scripts/nfs-utils_env.sh &&

if [ ! -f /etc/nfsmount.conf ]; then
  install -D -m644 utils/mount/nfsmount.conf /etc/nfsmount.conf
fi &&
install -D -m644 $SCRIPT_DIRECTORY/id_resolver.conf /etc/request-key.d/id_resolver.conf &&

# Default exports file
if [ ! -f /etc/exports ]; then
  install -D -m644 $SCRIPT_DIRECTORY/exports /etc/exports
fi &&

mkdir -p /etc/exports.d &&
mkdir -p -m 555 /var/lib/nfs/rpc_pipefs &&
mkdir /var/lib/nfs/v4recovery
