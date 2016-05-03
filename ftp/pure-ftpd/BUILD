add_priv_user ftp:ftp -d /var/empty -s /bin/false &&

OPTS+=" --docdir=/usr/share/doc/pure-ftpd \
        --sysconfdir=/etc/pure-ftpd \
        --with-boring \
        --with-paranoidmsg \
        --with-sysquotas \
        --with-puredb \
        --with-quotas \
        --with-virtualhosts \
        --with-peruserlimits" &&

default_build &&

gather_docs *.conf &&

if [ ! -f /etc/ftpusers ]; then
  cp pam/ftpusers /etc
fi

install -Dm755 configuration-file/pure-config.pl /usr/bin/pure-config.pl
install -Dm644 -t /etc/pure-ftpd/ configuration-file/pure-ftpd.conf $SCRIPT_DIRECTORY/welcome.msg

#install doc
install -d /usr/share/doc/$MODULE/ &&
install -Dm644 -t /usr/share/doc/$MODULE/ README* pureftpd-*sql.conf

# create the virtual users home directory
mkdir -p /srv/ftp &&
chown ftp:ftp /srv/ftp -R &&
