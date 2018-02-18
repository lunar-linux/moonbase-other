add_priv_user rpc:rpc &&

OPTS+=" --with-rpcuser=rpc \
        --enable-warmstarts \
        --with-statedir=/var/lib/rpcbind" &&

if ! module_installed systemd; then
  OPTS+=" --with-systemdsystemunitdir=no"
fi &&

default_build &&

install -m644 man/rpcinfo.8 /usr/share/man/man8 &&
install -d -m 700 -o rpc -g rpc /var/lib/rpcbind
