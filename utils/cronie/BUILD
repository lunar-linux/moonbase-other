OPTS+=" --exec-prefix=/usr \
        --enable-anacron \
        --with-inotify"

default_build &&

chmod u+s /usr/bin/crontab &&

install -d /var/spool/{ana,}cron &&
install -d /etc/cron.{d,hourly,daily,weekly,monthly} &&
install -Dm644 $SCRIPT_DIRECTORY/deny /etc/cron.deny &&

install -Dm644 contrib/anacrontab /etc/anacrontab &&
install -Dm644 contrib/0hourly /etc/cron.d/0hourly &&
install -Dm755 contrib/0anacron /etc/cron.hourly/0anacron &&

[ -d /var/spool/cron ] || install -d -m 0701 /var/spool/cron &&

if module_installed openrc; then
   install -m645 $SCRIPT_DIRECTORY/cronie /etc/init.d/cronie &&
   rm -f /etc/init.d/crond
fi
