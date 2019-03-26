add_priv_user ftp:ftp -d /var/empty -s /bin/false &&

OPTS+=" --docdir=/usr/share/doc/pure-ftpd \
        --sysconfdir=/etc/pure-ftpd \
        --with-boring \
        --with-paranoidmsg \
        --with-sysquotas \
        --with-puredb \
        --with-quotas \
        --with-virtualhosts \
        --with-peruserlimits"

OPTS+=" --sbindir=/usr/bin" &&

default_build &&

gather_docs *.conf &&

if [ ! -f /etc/ftpusers ]; then
  cp pam/ftpusers /etc
fi

install -Dm644 -t /etc/pure-ftpd/ pure-ftpd.conf $SCRIPT_DIRECTORY/welcome.msg

# install doc
install -d /usr/share/doc/$MODULE/ &&
install -Dm644 -t /usr/share/doc/$MODULE/ README* pureftpd-*sql.conf

# create the virtual users home directory
mkdir -p /srv/ftp &&
chown ftp:ftp /srv/ftp -R &&

# customize the config file
sedit 's|NoAnonymous\s.*no|NoAnonymous yes|' /etc/pure-ftpd/pure-ftpd.conf
sedit '/# FortunesFile/a FortunesFile \/etc\/pure-ftpd\/welcome.msg' /etc/pure-ftpd/pure-ftpd.conf
sedit 's|SyslogFacility\s.*ftp|SyslogFacility none|' /etc/pure-ftpd/pure-ftpd.conf
sedit 's|#PIDFile\s.*/var/run/pure-ftpd.pid|PIDFile /run/pure-ftpd.pid|' /etc/pure-ftpd/pure-ftpd.conf
sedit 's|# AltLog\s.*clf:/var/log/pureftpd.log|AltLog clf:/var/log/pureftpd.log|' /etc/pure-ftpd/pure-ftpd.conf
sedit 's|# TLS\s.*1|TLS 1|' /etc/pure-ftpd/pure-ftpd.conf
sedit 's|# TLSCipherSuite\s.*HIGH|TLSCipherSuite -S:HIGH:MEDIUM:+TLSv1|' /etc/pure-ftpd/pure-ftpd.conf
