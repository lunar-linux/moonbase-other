export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"

sedit 's:/usr/local:/usr:' Makefile &&

LIBDIR="/usr/lib/rabbitmq/lib/rabbitmq_server-${VERSION}"
add_priv_user rabbitmq:rabbitmq -d /var/lib/rabbitmq &&

make all &&

prepare_install &&

make install TARGET_DIR=$LIBDIR \
             SBIN_DIR=/usr/lib/rabbitmq/bin \
             MAN_DIR=/usr/share/man &&

for i in rabbitmqctl rabbitmq-defaults rabbitmq-env rabbitmq-plugins rabbitmq-server; do
  install -p -D -m 0755 $SOURCE_CACHE/$SOURCE2 /usr/sbin/$i
done &&

install -o rabbitmq -g rabbitmq -m 750 -d /var/log/rabbitmq &&
install -o rabbitmq -g rabbitmq -m 750 -d /var/lib/rabbitmq &&

if [ ! -f /etc/rabbitmq/rabbitmq-env.conf ]; then
  install -Dm0644 $SCRIPT_DIRECTORY/rabbitmq-env.conf /etc/rabbitmq/rabbitmq-env.conf
fi
