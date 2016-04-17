OPTS+=" --exec-prefix=/usr \
        --mandir=/usr/share/man \
        --enable-inet6 \
        --enable-md5auth" &&

OPTS+=" --sbindir=/usr/bin" &&

autoconf &&

default_build

#install -D -m644 ssmtp.conf.5 "/usr/share/man/man5/ssmtp.conf.5 &&

ln -s /usr/bin/ssmtp /usr/bin/mailq &&
ln -s /usr/bin/ssmtp /usr/bin/sendmail &&
ln -s /usr/bin/ssmtp /usr/bin/newaliases
