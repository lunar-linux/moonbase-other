default_build &&

# Installing example configs and scripts to /usr/share/doc/msmtp
# as they are not installed by default (Debian and Gentoo do it this way)
install -d /usr/share/doc/msmtp &&
cp -r scripts/{find_alias,msmtpqueue,msmtpq,set_sendmail} /usr/share/doc/msmtp/ &&
install -D -m644 doc/*.example /usr/share/doc/msmtp/ &&

cd /usr/bin &&
ln -sf msmtp /usr/bin/sendmail
