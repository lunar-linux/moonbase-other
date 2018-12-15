OPTS+=" --mandir=/usr/share/man \
        --with-compress-command=/usr/bin/gzip \
	--with-uncompress-command=/usr/bin/gunzip \
	--with-default-mail-command=/usr/bin/mail"

default_build &&

if [ ! -e /etc/logrotate.conf ]; then
  install -m 0644 $SCRIPT_DIRECTORY/logrotate.conf /etc/logrotate.conf
fi &&

gather_docs examples
