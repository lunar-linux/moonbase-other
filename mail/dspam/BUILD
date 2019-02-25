OPTS+=" -enable-daemon \
        --enable-virtual-users \
        --enable-large-scale \
        --enable-long-usernames \
        --enable-external-lookup \
        --enable-split-configuration \
        --with-dspam-home=/var/lib/dspam\
        --with-logdir=/var/log/dspam \
        --with-logfile=/var/log/dspam/dspam.log"

default_build &&

mkdir -p /var/log/dspam &&
chmod 750 /var/log/dspam &&

# install dspam_maintenance from contrib/
install -Dm0755 contrib/dspam_maintenance/dspam_maintenance.sh /usr/bin/dspam_maintenance &&
install -Dm0644 contrib/dspam_maintenance/dspam_maintenance.1 /usr/share/man/man1/ &&
install -Dm0755 $SCRIPT_DIRECTORY/dspam_maintenance.cron /etc/cron.daily/dspam_maintenance
