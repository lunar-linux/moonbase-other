OPTS+=" --enable-tivo     \
        --enable-netgear  \
        --enable-readynas \
        --sysconfdir=/etc/minidlna        \
        --with-db-path=/var/lib/minidlna  \
        --with-log-path=/var/log/minidlna" &&

if [ ! -f /etc/minidlna/minidlna.conf ]; then
  install -Dm644 minidlna.conf /etc/minidlna/minidlna.conf
else
  install -Dm644 minidlna.conf /etc/minidlna/minidlna.conf.new
fi &&

add_priv_group minidlna &&
add_priv_user minidlna:minidlna -d /var/lib/minidlna -d /run/minidlna -g minidlna &&

default_build &&

mkdir -p /var/{lib,run,log,cache}/minidlna &&
mkdir -p /run/minidlna &&
chown minidlna:minidlna /var/{lib,log,run,cache}/minidlna &&
chmod 0755 /run/minidlna &&
touch /var/log/minidlna/minidlna.log &&
chmod 644 /var/log/minidlna/minidlna.log &&
chown minidlna:minidlna /var/log/minidlna/minidlna.log &&

if [[ ! -f /etc/minidlna/minidlna.conf ]]; then
 install -Dm644 minidlna.conf /etc/minidlna/minidlna.conf
fi &&

install -Dm644 $SCRIPT_DIRECTORY/minidlna.sysusers /usr/lib/sysusers.d/minidlna.sysusers &&
install -Dm644 $SCRIPT_DIRECTORY/minidlna.tmpfiles /usr/lib/tmpfiles.d/minidlna.conf
