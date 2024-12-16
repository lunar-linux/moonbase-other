OPTS+=" --exec-prefix=/usr  \
        --enable-regexp     \
        --enable-largefile  \
        --enable-klog       \
        --enable-inet       \
        --enable-mail       \
        --enable-imfile     \
        --enable-rsyslogd   \
        --enable-rsyslogrt  \
        --enable-imjournal  \
        --enable-omjournal  \
        --enable-omprog     \
        --enable-impstats   \
        --enable-imptcp     \
        --disable-rfc3195"

default_build &&

# The rsyslog.conf defaults to /var/spool/rsyslog, so lets mk it else
#it's service file barks about its WorkDirectory missing
mkdir -p /var/spool/rsyslog &&

if [ ! -f /etc/rsyslog.conf ]; then
  install -m 644 $SCRIPT_DIRECTORY/rsyslog.conf /etc/rsyslog.conf
fi &&

if [ ! -d /etc/rsyslog.d/20-default.conf ]; then
  install -Dm0644 $SCRIPT_DIRECTORY/20-default.conf /etc/rsyslog.d/20-default.conf
fi &&

mkdir -p /usr/share/doc/rsyslog/scripts/{mysql,pqsql} &&
install -m 644 plugins/ommysql/createDB.sql /usr/share/doc/rsyslog/scripts/mysql/ &&
install -m 644 plugins/ompgsql/createDB.sql /usr/share/doc/rsyslog/scripts/pqsql/ &&

gather_docs doc/rsyslog-example.conf
