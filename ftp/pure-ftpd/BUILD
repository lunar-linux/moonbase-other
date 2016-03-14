OPTS+=" --with-everything \
        --bindir=/usr/bin \
        --sbindir=/usr/bin" &&

default_build &&

gather_docs *.conf &&

if [ ! -f /etc/ftpusers ]; then
  cp pam/ftpusers /etc
fi

install -Dm755 configuration-file/pure-config.pl /usr/bin/pure-config.pl
install -Dm644 -t /etc/pure-ftpd/ configuration-file/pure-ftpd.conf $SCRIPT_DIRECTORY/welcome.msg
